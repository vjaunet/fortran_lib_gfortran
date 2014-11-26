module lib_piv_data
  use lib_stat
  use lib_pod
  implicit none

  !=================Specification=============================
  !
  !
  ! PIV data container and useful routines
  !
  !
  !
  !
  !===========================================================

  integer, private :: i,j,ic,is

  type PIVdata
     character ::typeofgrid="C"
     integer   ::nx,ny,nsamples,ncomponent,pixel_step
     real      ::dx,x0,dy,y0 !for scaling
     integer   ::ntheta,nr
     real      ::dr,dtheta
     real      ::z_pos=0,fs=1
     real, dimension(:,:,:,:), allocatable ::u
     real, dimension(:,:,:),   allocatable ::x

     !stat containers
     real, dimension(:,:,:),   allocatable ::ustat
     real, dimension(:,:,:),   allocatable ::w

   contains
     procedure :: read_bin  => piv_io_read
     procedure :: write_bin => piv_io_write
     procedure :: cal_stats => piv_stats
     procedure :: get_fluctuations => piv_fluctuations
     procedure :: set_x     => piv_set_x
     procedure :: replace_outlier => piv_replace_outlier
     procedure :: destroy   => piv_destroy

  end type PIVdata

contains

  subroutine piv_set_x(datapiv)
    class(PIVdata)                     ::datapiv
    !-----------------------------------------------

    if (datapiv.typeofgrid == "C") then

       !fill in x for cartesian coodinate systeme
       allocate(datapiv.x(datapiv.nx,&
            datapiv.ny,&
            datapiv.ncomponent))
       do i=1,datapiv.nx
          do j=1,datapiv.ny
             datapiv.x(i,j,1) = real(i*datapiv.pixel_step) * datapiv.dx + datapiv.x0
             datapiv.x(i,j,2) = real(j*datapiv.pixel_step) * datapiv.dy + datapiv.y0
             datapiv.x(i,j,3) = datapiv.z_pos
          end do
       end do

    else if (datapiv.typeofgrid == "P") then

       !fill in x for polar coodinate systeme
       allocate(datapiv.x(datapiv.nr,&
            datapiv.ntheta,&
            datapiv.ncomponent))
       do i=1,datapiv.nr
          do j=1,datapiv.ntheta
             datapiv.x(i,j,1) = (i-1) * datapiv.dr * cos((j-1)*datapiv.dtheta)
             datapiv.x(i,j,2) = (i-1) * datapiv.dr * sin((j-1)*datapiv.dtheta)
             datapiv.x(i,j,3) = datapiv.z_pos
          end do
       end do

    else
       write(06,*)"piv_io_read : impossible to define the type of grid"
       STOP
    end if

  end subroutine piv_set_x

  subroutine piv_stats(datapiv)
    class(PIVdata)                     ::datapiv
    integer                            ::n1,n2
    !-----------------------------------------------
    if(datapiv.typeofgrid == 'C') then
       n1 = datapiv.nx
       n2 = datapiv.ny
    else
       n1 = datapiv.nr
       n2 = datapiv.ntheta
    end if

    allocate(datapiv.ustat(n1,n2,2*datapiv.ncomponent))
    if (.not. allocated(datapiv.w)) then
       allocate(datapiv.w(n1,n2,datapiv.nsamples))
       datapiv.w = 1.0
    end if

    do ic=1,datapiv.ncomponent
       do j=1,n2
          do i=1,n1

             call average(datapiv.u(i,j,ic,:),&
                  datapiv.ustat(i,j,ic),&
                  datapiv.w(i,j,:))
             call rms    (datapiv.u(i,j,ic,:),&
                  datapiv.ustat(i,j,ic+datapiv.ncomponent),&
                  datapiv.w(i,j,:))

          end do
       end do
    end do


  end subroutine piv_stats

  subroutine piv_fluctuations(datapiv)
    class(PIVdata)                     ::datapiv
    integer                            ::n1,n2
    !-----------------------------------------------

    call piv_stats(datapiv)

    do is=1,datapiv.nsamples
       datapiv.u(:,:,:,is) = datapiv.u(:,:,:,is) - datapiv.ustat(:,:,:)
    end do

  end subroutine piv_fluctuations

  subroutine piv_io_read(datapiv,filename)
    class(PIVdata)                     ::datapiv
    character(len=*)                   ::filename
    logical                            ::file_exists
    !----------------------------------------------

    !check existence of binary data file
    inquire(file=trim(filename), EXIST=file_exists)
    if (file_exists) then

       open(unit=110,file=trim(filename),form='unformatted',&
            action='read', access='stream', status='old')

       read(110)datapiv.typeofgrid

       if (datapiv.typeofgrid == "P") then
          read(110)datapiv.nr, datapiv.ntheta,&
               datapiv.ncomponent,datapiv.nsamples,&
               datapiv.dr, datapiv.dtheta,&
               datapiv.fs

          allocate(datapiv.u(datapiv.nr,&
               datapiv.ntheta,&
               datapiv.ncomponent,datapiv.nsamples))
          read(110)datapiv.u

       else if (datapiv.typeofgrid == "C") then
          !read datapiv info header
          read(110)datapiv.nx, datapiv.ny,&
               datapiv.ncomponent,datapiv.nsamples,&
               datapiv.dx, datapiv.dy,&
               datapiv.x0, datapiv.y0,&
               datapiv.pixel_step,datapiv.fs

          !read velocity samples
          allocate(datapiv.u(datapiv.nx,&
               datapiv.ny,&
               datapiv.ncomponent,datapiv.nsamples))
          read(110)datapiv.u

       else
          write(06,*)"piv_io_read : impossible to define the type of grid"
          STOP
       end if

       close(110)
    else
       write(06,*) trim(filename)," doesn't exist..."
       STOP
    end if

  end subroutine piv_io_read

  subroutine piv_io_write(datapiv,filename)
    class(PIVdata)                     ::datapiv
    character(len=*)                   ::filename
    logical                            ::file_exists
    !----------------------------------------------

    open(unit=110,file=trim(filename),form='unformatted',&
         action='write', access='stream', status='unknown')

    !write datapiv info header
    if (datapiv.typeofgrid == "P") then
       write(110)datapiv.nr, datapiv.ntheta,&
            datapiv.ncomponent,datapiv.nsamples,&
            datapiv.dr, datapiv.dtheta,&
            datapiv.fs

    else if (datapiv.typeofgrid == "C") then
       write(110)datapiv.nx, datapiv.ny,&
            datapiv.ncomponent,datapiv.nsamples,&
            datapiv.dx, datapiv.dy,&
            datapiv.x0, datapiv.y0,&
            datapiv.pixel_step,datapiv.fs
    else
       write(06,*)"piv_io_write : impossible to define the type of grid"
       STOP
    end if

    write(110)datapiv.u

    close(110)

  end subroutine piv_io_write



  subroutine piv_destroy(datapiv)
    class(PIVdata)                     ::datapiv
    !-------------------------------------------

    if (allocated(datapiv.u)) deallocate(datapiv.u)
    if (allocated(datapiv.ustat)) deallocate(datapiv.ustat)
    if (allocated(datapiv.x)) deallocate(datapiv.x)
    if (allocated(datapiv.w)) deallocate(datapiv.w)

  end subroutine piv_destroy



  !***********************************************************************
  !
  !          PIV filter routines
  !
  !***********************************************************************
  subroutine piv_replace_outlier(datapiv,method,wsize)
    class(PIVdata)                            ::datapiv
    character(len=*)                          ::method
    integer    ,optional                      ::wsize

    real                                      ::um
    integer                                   ::ii,jj,i0
    integer                                   ::nx,ny,ns,nc
    real                                      ::nval


    integer(kind=8)                           ::id,if,jd,jf,ivec,nvec
    real(kind=8) ,dimension(:) ,allocatable   ::neighbor,neighflag
    !-------------------------------------------------------------

    if (.not.PRESENT(wsize)) wsize = 3;

    if (method == "POD") then
       call gappypod(datapiv.u,datapiv.w,int(10),real(1e-8))
       return
    end if

    ns = datapiv.nsamples
    nc = datapiv.ncomponent
    if (datapiv.typeofgrid == 'C') then
       ny = datapiv.ny
       nx = datapiv.nx
    else if (datapiv.typeofgrid == 'P') then
       ny = datapiv.nr
       nx = datapiv.ntheta
    end if

    !loop through all the samples
    do is=1,ns
       do ic=1,nc
          do j=1,ny
             do i=1,nx

                !computing the Interrogation Area size
                if (i==1) then
                   id = 0  ; if = wsize
                else if (i==nx) then
                   id = -wsize ; if = 0
                end if

                if (j==1) then
                   jd =  0 ; jf = wsize
                else if (j==ny) then
                   jd = -wsize ; jf = 0
                end if

                !storing the Interrogation area
                nvec = (if-id+1)*(jf-jd+1)
                allocate (neighbor(nvec))
                allocate (neighflag(nvec))
                ivec = 1
                do ii=id,if
                   do jj =jd,jf
                      if (.not.(ii/=0 .and. jj/=0)) then
                         neighbor(ivec)  = datapiv.u(i+ii,j+jj,ic,is)
                         neighflag(ivec) = datapiv.w(i+ii,j+jj,is)
                         ivec = ivec +1
                      end if
                   end do
                end do

                select case(method)

                case ("UOD")

                   !computing the UOD on the subsample
                   call UOD_filter(datapiv.u(i,j,ic,is),neighbor,neighflag,Nvec)

                case("AVG")

                   !computing the AVERAGE filter on the subsample
                   call average_filter(datapiv.u(i,j,ic,is),neighbor,neighflag,Nvec)

                case("MED")

                   !computing the MEDIAN filter on the subsample
                   call median_filter(datapiv.u(i,j,ic,is),neighbor,neighflag,Nvec)

                end select

             end do
          end do
       end do
    end do

    return

  end subroutine piv_replace_outlier

  SUBROUTINE UOD_filter(input,neighbor,flag,Nneigh)
    use qsort_c
    implicit none

    !input variables
    real(kind=4)                                       ::input
    integer(kind=8)                                    ::Nneigh
    real(kind=8)        ,dimension(NNEIGH)             ::neighbor,flag

    !Intern variables
    real(kind=8)                                       ::Um,rm,r0
    real(kind=8)        ,dimension(:) ,allocatable     ::tosort
    real(kind=8)        ,dimension(:) ,allocatable     ::resid
    real(kind=8)                                       ::epsilon = 0.2
    real(kind=8)                                       ::threshold = 2.d0

    !loops
    integer(kind=8)                                    ::i,pos,nvalid
    integer(kind=8)                                    ::iv

    !------------------------------------------------------

    nvalid = 0
    do i=1,Nneigh
       if (flag(i) == 1.d0) then
          nvalid = nvalid + 1
       end if
    end do

    allocate(tosort(Nvalid))
    iv = 1
    do i=1,nvalid
       if (flag(i) == 1.d0) then
          tosort(iv) = neighbor(i)
          iv = iv +1
       end if
    end do

    call QsortC(tosort)
    Um = tosort(nvalid/2)

    allocate(resid(Nvalid))
    iv = 1
    do i=1,nvalid
       if (flag(i) == 1.d0) then
          resid(iv) = neighbor(i)-Um
          iv = iv +1
       end if
    end do
    tosort = resid
    call QsortC(tosort)
    rm = tosort(nvalid/2)

    r0 = abs(input - Um)/(rm + epsilon)

    if (r0 > threshold) then
       input = Um
       flag(1) = -1.d0
    end if


  END SUBROUTINE UOD_filter

  SUBROUTINE median_filter(input,neighbor,flag,Nneigh)
    use qsort_c
    implicit none

    !input variables
    real(kind=4)                                       ::input
    integer(kind=8)                                    ::Nneigh
    real(kind=8)        ,dimension(NNEIGH)             ::neighbor,flag

    !Intern variables
    real(kind=8)                                       ::median
    real(kind=8)        ,dimension(:) ,allocatable     ::tosort

    !loops
    integer(kind=8)                                    ::i,pos,nvalid

    !------------------------------------------------------

    nvalid = 0
    do i=1,Nneigh
       if (flag(i) == 1.d0) then
          nvalid = nvalid + 1
       end if
    end do

    allocate(tosort(Nvalid))
    nvalid = 1
    do i=1,nvalid
       if (flag(i) == 1.d0) then
          tosort(nvalid) = neighbor(i)
          nvalid = nvalid + 1
       end if
    end do

    call QsortC(tosort)
    median = neighbor(nvalid/2)

    if (abs(input) > 2.d0*median) then
       input = median
       flag(1) = 0.d0
    end if


  END SUBROUTINE median_filter

  SUBROUTINE average_filter(input,neighbor,flag,Nneigh)
    implicit none

    !input variables
    real(kind=4)                                       ::input
    integer(kind=8)                                    ::Nneigh
    real(kind=8)        ,dimension(NNEIGH)             ::neighbor,flag

    !Intern variables
    real(kind=8)                                       ::mean
    real(kind=8)                                       ::rms

    !loops
    integer(kind=8)                                    ::i,pos

    !------------------------------------------------------

    mean = 0.d0
    do i=1,Nneigh
       mean = mean + neighbor(i)*flag(i)
    end do
    mean = mean/sum(flag(:))

    rms = 0.d0
    do i=1,Nneigh
       rms = rms + (((neighbor(i)-mean)**2)*flag(i))
    end do
    rms = sqrt(rms/sum(flag(:)))

    if (sum(flag(:)) > 3) then
       if (abs(input-mean) > 2.d0*rms) then
          input = mean
          flag(1) = 0.d0
       end if
    end if

  END SUBROUTINE average_filter

end module lib_piv_data
