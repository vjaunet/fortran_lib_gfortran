	  8Z  �   k820309              13.0        ��PT                                                                                                           
       SOURCE/tecplot_io.f90 TECPLOT_IO       !       FWRITE_ASCII_1D DWRITE_ASCII_1D_2 DWRITE_ASCII_1D IWRITE_ASCII_1D FWRITE_ASCII_1D_1C DWRITE_ASCII_1D_1C IWRITE_ASCII_1D_1C FWRITE_ASCII_2D DWRITE_ASCII_2D IWRITE_ASCII_2D DWRITE_ASCII_2D_1C FWRITE_ASCII_3D DWRITE_ASCII_3D IWRITE_ASCII_3D FREAD_ASCII_1D DREAD_ASCII_1D IREAD_ASCII_1D FREAD_ASCII_2D DREAD_ASCII_2D IREAD_ASCII_2D FREAD_ASCII_3D DREAD_ASCII_3D IREAD_ASCII_3D TEC_READ_HEADER_IO TEC_READ_HEADER_BSA TEC_GET_ZONE_1D TEC_GET_ZONE_2D I J K IC IN IX                                                        u #TEC_READ_HEADER_IO    #TEC_READ_HEADER_BSA    #         @     @X                                                #TEC_READ_HEADER_IO%LEN_TRIM    #FILESPEC                                                    LEN_TRIM           D                                      �              #FILETYPE    #         @     @X                                                #TEC_READ_HEADER_BSA%LEN_TRIM    #FILESPEC    #T0                                                    LEN_TRIM           D                                      �              #FILETYPE              D                                     
                                                              u #TEC_GET_ZONE_1D 	   #TEC_GET_ZONE_2D    #TEC_GET_ZONE_2D_S    #         @     @X                             	                   #TEC_GET_ZONE_1D%ADJUSTL 
   #TEC_GET_ZONE_1D%PRESENT    #TEC_GET_ZONE_1D%LEN_TRIM    #FILESPEC    #NX    #NC    #ZONE_TITLE                                               
     ADJUSTL                                                 PRESENT                                                 LEN_TRIM                                                 �              #FILETYPE              D                                                      D                                                      F @                                   �                       #         @     @X                                                #TEC_GET_ZONE_2D%ADJUSTL    #TEC_GET_ZONE_2D%PRESENT    #TEC_GET_ZONE_2D%LEN_TRIM    #FILESPEC    #NX    #NY    #NC    #ZONE_TITLE                                                    ADJUSTL                                                 PRESENT                                                 LEN_TRIM                                                 �              #FILETYPE              D                                                      D                                                      D                                                      F @                                                   1                                                     	   u #FREAD_ASCII_1D    #DREAD_ASCII_1D    #IREAD_ASCII_1D #   #FREAD_ASCII_2D '   #DREAD_ASCII_2D +   #IREAD_ASCII_2D /   #FREAD_ASCII_3D 3   #DREAD_ASCII_3D 7   #IREAD_ASCII_3D ;   #         @     @X                                                #FREAD_ASCII_1D%SIZE    #FILESPEC    #TAB                                                    SIZE                                                 �              #FILETYPE              D@                                                  	               &                   &                                           #         @     @X                                                #DREAD_ASCII_1D%SIZE     #FILESPEC !   #TAB "                                                    SIZE                                            !     �              #FILETYPE              D@                              "                   
               &                   &                                           #         @     @X                             #                   #IREAD_ASCII_1D%SIZE $   #FILESPEC %   #TAB &                                              $     SIZE                                            %     �              #FILETYPE              D@                               &                                  &                   &                                           #         @     @X                             '                   #FREAD_ASCII_2D%SIZE (   #FILESPEC )   #TAB *                                              (     SIZE                                            )     �              #FILETYPE              D@                               *                   	               &                   &                   &                                           #         @     @X                             +                   #DREAD_ASCII_2D%SIZE ,   #FILESPEC -   #TAB .                                              ,     SIZE                                            -     �              #FILETYPE              D@                              .                   
               &                   &                   &                                           #         @     @X                             /                   #IREAD_ASCII_2D%SIZE 0   #FILESPEC 1   #TAB 2                                              0     SIZE                                            1     �              #FILETYPE              D@                               2                                  &                   &                   &                                           #         @     @X                             3                   #FREAD_ASCII_3D%SIZE 4   #FILESPEC 5   #TAB 6                                              4     SIZE                                            5     �              #FILETYPE              D@                               6                   	               &                   &                   &                   &                                           #         @     @X                             7                   #DREAD_ASCII_3D%SIZE 8   #FILESPEC 9   #TAB :                                              8     SIZE                                            9     �              #FILETYPE              D@                              :                   
               &                   &                   &                   &                                           #         @     @X                             ;                   #IREAD_ASCII_3D%SIZE <   #FILESPEC =   #TAB >                                              <     SIZE                                            =     �              #FILETYPE              D@                               >                    	              &                   &                   &                   &                                                                                                  u #FWRITE_ASCII_1D ?   #DWRITE_ASCII_1D_2 G   #DWRITE_ASCII_1D O   #IWRITE_ASCII_1D W   #FWRITE_ASCII_1D_1C _   #DWRITE_ASCII_1D_1C g   #IWRITE_ASCII_1D_1C o   #FWRITE_ASCII_2D w   #DWRITE_ASCII_2D    #IWRITE_ASCII_2D �   #DWRITE_ASCII_2D_1C �   #FWRITE_ASCII_3D �   #DWRITE_ASCII_3D �   #IWRITE_ASCII_3D �   #         @     @X�                            ?                   #FWRITE_ASCII_1D%SIZE @   #FWRITE_ASCII_1D%PRESENT A   #FWRITE_ASCII_1D%TRIM B   #FILESPEC C   #T D   #TAB E   #ZONETITLE F                                              @     SIZE                                            A     PRESENT                                            B     TRIM                                            C     �              #FILETYPE              
 @                               D                   	              &                                                     
 @                               E                   	 
             &                   &                                                      @                              F                     1 #         @     @X�                            G                   #DWRITE_ASCII_1D_2%SIZE H   #DWRITE_ASCII_1D_2%PRESENT I   #DWRITE_ASCII_1D_2%TRIM J   #FILESPEC K   #T L   #TAB M   #ZONETITLE N                                              H     SIZE                                            I     PRESENT                                            J     TRIM                                            K     �              #FILETYPE              
 @                              L                   
              &                   &                                                     
 @                              M                   
              &                   &                                                      @                              N                     1 #         @     @X�                            O                   #DWRITE_ASCII_1D%SIZE P   #DWRITE_ASCII_1D%PRESENT Q   #DWRITE_ASCII_1D%TRIM R   #FILESPEC S   #T T   #TAB U   #ZONETITLE V                                              P     SIZE                                            Q     PRESENT                                            R     TRIM                                            S     �              #FILETYPE              
 @                              T                   
              &                                                     
 @                              U                   
              &                   &                                                      @                              V                     1 #         @     @X�                            W                   #IWRITE_ASCII_1D%SIZE X   #IWRITE_ASCII_1D%PRESENT Y   #IWRITE_ASCII_1D%TRIM Z   #FILESPEC [   #T \   #TAB ]   #ZONETITLE ^                                              X     SIZE                                            Y     PRESENT                                            Z     TRIM                                            [     �              #FILETYPE              
 @                               \                                 &                                                     
 @                               ]                                 &                   &                                                      @                              ^                     1 #         @     @X                             _                   #FWRITE_ASCII_1D_1C%SIZE `   #FWRITE_ASCII_1D_1C%PRESENT a   #FWRITE_ASCII_1D_1C%TRIM b   #FILESPEC c   #T d   #ZONETITLE e   #TAB f                                              `     SIZE                                            a     PRESENT                                            b     TRIM                                            c     �              #FILETYPE              
 @                               d                   	              &                                                      @                              e                     1           
 @                               f                   	              &                                           #         @     @X                             g                   #DWRITE_ASCII_1D_1C%SIZE h   #DWRITE_ASCII_1D_1C%PRESENT i   #DWRITE_ASCII_1D_1C%TRIM j   #FILESPEC k   #T l   #TAB m   #ZONETITLE n                                              h     SIZE                                            i     PRESENT                                            j     TRIM                                            k     �              #FILETYPE              
 @                              l                   
              &                                                     
                                 m                   
              &                                                      @                              n                     1 #         @     @X                             o                   #IWRITE_ASCII_1D_1C%SIZE p   #IWRITE_ASCII_1D_1C%PRESENT q   #IWRITE_ASCII_1D_1C%TRIM r   #FILESPEC s   #T t   #ZONETITLE u   #TAB v                                              p     SIZE                                            q     PRESENT                                            r     TRIM                                            s     �              #FILETYPE              
 @                               t                                 &                                                      @                              u                     1           
 @                               v                                 &                                           #         @     @X�                            w                   #FWRITE_ASCII_2D%SIZE x   #FWRITE_ASCII_2D%PRESENT y   #FWRITE_ASCII_2D%TRIM z   #FILESPEC {   #X |   #TAB }   #ZONETITLE ~                                              x     SIZE                                            y     PRESENT                                            z     TRIM                                            {     �              #FILETYPE              
@                               |                   	              &                   &                   &                                                     
 @                               }                   	              &                   &                   &                                                      @                              ~                     1 #         @     @X�                                               #DWRITE_ASCII_2D%SIZE �   #DWRITE_ASCII_2D%PRESENT �   #DWRITE_ASCII_2D%TRIM �   #FILESPEC �   #X �   #TAB �   #ZONETITLE �                                              �     SIZE                                            �     PRESENT                                            �     TRIM                                            �     �              #FILETYPE              
@                              �                   
              &                   &                   &                                                     
 @                              �                   
              &                   &                   &                                                      @                              �                     1 #         @     @X�                            �                   #IWRITE_ASCII_2D%SIZE �   #IWRITE_ASCII_2D%PRESENT �   #IWRITE_ASCII_2D%TRIM �   #FILESPEC �   #X �   #TAB �   #ZONETITLE �                                              �     SIZE                                            �     PRESENT                                            �     TRIM                                            �     �              #FILETYPE              
@                               �                                 &                   &                   &                                                     
 @                               �                                 &                   &                   &                                                      @                              �                     1 #         @     @X�                            �                   #DWRITE_ASCII_2D_1C%SIZE �   #DWRITE_ASCII_2D_1C%PRESENT �   #DWRITE_ASCII_2D_1C%TRIM �   #FILESPEC �   #X �   #TAB �   #ZONETITLE �                                              �     SIZE                                            �     PRESENT                                            �     TRIM                                            �     �              #FILETYPE              
 @                              �                   
              &                   &                   &                                                     
 @                              �                   
              &                   &                                                      @                              �                     1 #         @     @X�                            �                   #FWRITE_ASCII_3D%SIZE �   #FWRITE_ASCII_3D%PRESENT �   #FWRITE_ASCII_3D%TRIM �   #FILESPEC �   #X �   #TAB �   #ZONETITLE �                                              �     SIZE                                            �     PRESENT                                            �     TRIM                                            �     �              #FILETYPE              
 @                               �                   	 !             &                   &                   &                   &                                                     
 @                               �                   	               &                   &                   &                   &                                                      @                              �                     1 #         @     @X�                            �                   #DWRITE_ASCII_3D%SIZE �   #DWRITE_ASCII_3D%PRESENT �   #DWRITE_ASCII_3D%TRIM �   #FILESPEC �   #X �   #TAB �   #ZONETITLE �                                              �     SIZE                                            �     PRESENT                                            �     TRIM                                            �     �              #FILETYPE              
 @                              �                   
 #             &                   &                   &                   &                                                     
 @                              �                   
 "             &                   &                   &                   &                                                      @                              �                     1 #         @     @X�                            �                   #IWRITE_ASCII_3D%SIZE �   #IWRITE_ASCII_3D%PRESENT �   #IWRITE_ASCII_3D%TRIM �   #FILESPEC �   #X �   #TAB �   #ZONETITLE �                                              �     SIZE                                            �     PRESENT                                            �     TRIM                                            �     �              #FILETYPE              
 @                               �                    %             &                   &                   &                   &                                                     
 @                               �                    $             &                   &                   &                   &                                                      @                              �                     1                   @                               '�                   #FILENAME �   #RWACCESS �   #EXIST �   #FID �   #VARNAMES �   #TITLE �                �                              �     �                                   �                              �            �                          �                               �     �                                                                             ��������                         �                               �                              �                              �     �                                                                           �                       C                                                                                                                                                                                                                                                                                          �                              �     �       �                                                                    �                       C                                                                                                                                                                                                                                                                              #         @                                   �                   #TEC_OPENFILE%TRIM �   #FILESPEC �                                              �     TRIM                                            �     �              #FILETYPE    #         @                                   �                    #FILESPEC �                                              �     �              #FILETYPE    #         @                                   �                   #TEC_WRITE_HEADER%TRIM �   #FILESPEC �                                              �     TRIM                                            �     �              #FILETYPE    #         @      X                                                #TEC_GET_ZONE_2D_S%ADJUSTL �   #TEC_GET_ZONE_2D_S%PRESENT �   #TEC_GET_ZONE_2D_S%LEN_TRIM �   #FILESPEC �   #NX �   #NY �   #NC �   #ZONE_TITLE �                                              �     ADJUSTL                                            �     PRESENT                                            �     LEN_TRIM                                            �     �              #FILETYPE              D                                �                      D                                �                      D                                �                      F @                              �                     1    �   )      fn#fn     �   �  b   uapp(TECPLOT_IO $   �  q       gen@TEC_READ_HEADER #     w      TEC_READ_HEADER_IO ,   �  A      TEC_READ_HEADER_IO%LEN_TRIM ,   �  V   a   TEC_READ_HEADER_IO%FILESPEC $   #  �      TEC_READ_HEADER_BSA -   �  A      TEC_READ_HEADER_BSA%LEN_TRIM -   �  V   a   TEC_READ_HEADER_BSA%FILESPEC '   :  @   a   TEC_READ_HEADER_BSA%T0 !   z  �       gen@TEC_GET_ZONE     �  �      TEC_GET_ZONE_1D (   �  @      TEC_GET_ZONE_1D%ADJUSTL (   	  @      TEC_GET_ZONE_1D%PRESENT )   I  A      TEC_GET_ZONE_1D%LEN_TRIM )   �  V   a   TEC_GET_ZONE_1D%FILESPEC #   �  @   a   TEC_GET_ZONE_1D%NX #      @   a   TEC_GET_ZONE_1D%NC +   `  P   a   TEC_GET_ZONE_1D%ZONE_TITLE     �  �      TEC_GET_ZONE_2D (   �	  @      TEC_GET_ZONE_2D%ADJUSTL (   �	  @      TEC_GET_ZONE_2D%PRESENT )   
  A      TEC_GET_ZONE_2D%LEN_TRIM )   G
  V   a   TEC_GET_ZONE_2D%FILESPEC #   �
  @   a   TEC_GET_ZONE_2D%NX #   �
  @   a   TEC_GET_ZONE_2D%NY #     @   a   TEC_GET_ZONE_2D%NC +   ]  L   a   TEC_GET_ZONE_2D%ZONE_TITLE #   �  �       gen@TEC_READ_ASCII    �  x      FREAD_ASCII_1D $     =      FREAD_ASCII_1D%SIZE (   R  V   a   FREAD_ASCII_1D%FILESPEC #   �  �   a   FREAD_ASCII_1D%TAB    L  x      DREAD_ASCII_1D $   �  =      DREAD_ASCII_1D%SIZE (     V   a   DREAD_ASCII_1D%FILESPEC #   W  �   a   DREAD_ASCII_1D%TAB    �  x      IREAD_ASCII_1D $   s  =      IREAD_ASCII_1D%SIZE (   �  V   a   IREAD_ASCII_1D%FILESPEC #     �   a   IREAD_ASCII_1D%TAB    �  x      FREAD_ASCII_2D $   "  =      FREAD_ASCII_2D%SIZE (   _  V   a   FREAD_ASCII_2D%FILESPEC #   �  �   a   FREAD_ASCII_2D%TAB    q  x      DREAD_ASCII_2D $   �  =      DREAD_ASCII_2D%SIZE (   &  V   a   DREAD_ASCII_2D%FILESPEC #   |  �   a   DREAD_ASCII_2D%TAB    8  x      IREAD_ASCII_2D $   �  =      IREAD_ASCII_2D%SIZE (   �  V   a   IREAD_ASCII_2D%FILESPEC #   C  �   a   IREAD_ASCII_2D%TAB    �  x      FREAD_ASCII_3D $   w  =      FREAD_ASCII_3D%SIZE (   �  V   a   FREAD_ASCII_3D%FILESPEC #   
  �   a   FREAD_ASCII_3D%TAB    �  x      DREAD_ASCII_3D $   V  =      DREAD_ASCII_3D%SIZE (   �  V   a   DREAD_ASCII_3D%FILESPEC #   �  �   a   DREAD_ASCII_3D%TAB    �  x      IREAD_ASCII_3D $   5  =      IREAD_ASCII_3D%SIZE (   r  V   a   IREAD_ASCII_3D%FILESPEC #   �  �   a   IREAD_ASCII_3D%TAB $   �  t      gen@TEC_WRITE_ASCII       �      FWRITE_ASCII_1D %   �  =      FWRITE_ASCII_1D%SIZE (     @      FWRITE_ASCII_1D%PRESENT %   S  =      FWRITE_ASCII_1D%TRIM )   �  V   a   FWRITE_ASCII_1D%FILESPEC "   �  �   a   FWRITE_ASCII_1D%T $   r   �   a   FWRITE_ASCII_1D%TAB *   !  L   a   FWRITE_ASCII_1D%ZONETITLE "   b!  �      DWRITE_ASCII_1D_2 '   ."  =      DWRITE_ASCII_1D_2%SIZE *   k"  @      DWRITE_ASCII_1D_2%PRESENT '   �"  =      DWRITE_ASCII_1D_2%TRIM +   �"  V   a   DWRITE_ASCII_1D_2%FILESPEC $   >#  �   a   DWRITE_ASCII_1D_2%T &   �#  �   a   DWRITE_ASCII_1D_2%TAB ,   �$  L   a   DWRITE_ASCII_1D_2%ZONETITLE     �$  �      DWRITE_ASCII_1D %   �%  =      DWRITE_ASCII_1D%SIZE (   �%  @      DWRITE_ASCII_1D%PRESENT %   &  =      DWRITE_ASCII_1D%TRIM )   R&  V   a   DWRITE_ASCII_1D%FILESPEC "   �&  �   a   DWRITE_ASCII_1D%T $   4'  �   a   DWRITE_ASCII_1D%TAB *   �'  L   a   DWRITE_ASCII_1D%ZONETITLE     $(  �      IWRITE_ASCII_1D %   �(  =      IWRITE_ASCII_1D%SIZE (   ')  @      IWRITE_ASCII_1D%PRESENT %   g)  =      IWRITE_ASCII_1D%TRIM )   �)  V   a   IWRITE_ASCII_1D%FILESPEC "   �)  �   a   IWRITE_ASCII_1D%T $   �*  �   a   IWRITE_ASCII_1D%TAB *   *+  L   a   IWRITE_ASCII_1D%ZONETITLE #   v+  �      FWRITE_ASCII_1D_1C (   E,  =      FWRITE_ASCII_1D_1C%SIZE +   �,  @      FWRITE_ASCII_1D_1C%PRESENT (   �,  =      FWRITE_ASCII_1D_1C%TRIM ,   �,  V   a   FWRITE_ASCII_1D_1C%FILESPEC %   U-  �   a   FWRITE_ASCII_1D_1C%T -   �-  L   a   FWRITE_ASCII_1D_1C%ZONETITLE '   -.  �   a   FWRITE_ASCII_1D_1C%TAB #   �.  �      DWRITE_ASCII_1D_1C (   �/  =      DWRITE_ASCII_1D_1C%SIZE +   �/  @      DWRITE_ASCII_1D_1C%PRESENT (   0  =      DWRITE_ASCII_1D_1C%TRIM ,   B0  V   a   DWRITE_ASCII_1D_1C%FILESPEC %   �0  �   a   DWRITE_ASCII_1D_1C%T '   $1  �   a   DWRITE_ASCII_1D_1C%TAB -   �1  L   a   DWRITE_ASCII_1D_1C%ZONETITLE #   �1  �      IWRITE_ASCII_1D_1C (   �2  =      IWRITE_ASCII_1D_1C%SIZE +   3  @      IWRITE_ASCII_1D_1C%PRESENT (   H3  =      IWRITE_ASCII_1D_1C%TRIM ,   �3  V   a   IWRITE_ASCII_1D_1C%FILESPEC %   �3  �   a   IWRITE_ASCII_1D_1C%T -   g4  L   a   IWRITE_ASCII_1D_1C%ZONETITLE '   �4  �   a   IWRITE_ASCII_1D_1C%TAB     ?5  �      FWRITE_ASCII_2D %   6  =      FWRITE_ASCII_2D%SIZE (   B6  @      FWRITE_ASCII_2D%PRESENT %   �6  =      FWRITE_ASCII_2D%TRIM )   �6  V   a   FWRITE_ASCII_2D%FILESPEC "   7  �   a   FWRITE_ASCII_2D%X $   �7  �   a   FWRITE_ASCII_2D%TAB *   �8  L   a   FWRITE_ASCII_2D%ZONETITLE     �8  �      DWRITE_ASCII_2D %   �9  =      DWRITE_ASCII_2D%SIZE (   �9  @      DWRITE_ASCII_2D%PRESENT %   :  =      DWRITE_ASCII_2D%TRIM )   Y:  V   a   DWRITE_ASCII_2D%FILESPEC "   �:  �   a   DWRITE_ASCII_2D%X $   k;  �   a   DWRITE_ASCII_2D%TAB *   '<  L   a   DWRITE_ASCII_2D%ZONETITLE     s<  �      IWRITE_ASCII_2D %   9=  =      IWRITE_ASCII_2D%SIZE (   v=  @      IWRITE_ASCII_2D%PRESENT %   �=  =      IWRITE_ASCII_2D%TRIM )   �=  V   a   IWRITE_ASCII_2D%FILESPEC "   I>  �   a   IWRITE_ASCII_2D%X $   ?  �   a   IWRITE_ASCII_2D%TAB *   �?  L   a   IWRITE_ASCII_2D%ZONETITLE #   @  �      DWRITE_ASCII_2D_1C (   �@  =      DWRITE_ASCII_2D_1C%SIZE +   A  @      DWRITE_ASCII_2D_1C%PRESENT (   YA  =      DWRITE_ASCII_2D_1C%TRIM ,   �A  V   a   DWRITE_ASCII_2D_1C%FILESPEC %   �A  �   a   DWRITE_ASCII_2D_1C%X '   �B  �   a   DWRITE_ASCII_2D_1C%TAB -   LC  L   a   DWRITE_ASCII_2D_1C%ZONETITLE     �C  �      FWRITE_ASCII_3D %   ^D  =      FWRITE_ASCII_3D%SIZE (   �D  @      FWRITE_ASCII_3D%PRESENT %   �D  =      FWRITE_ASCII_3D%TRIM )   E  V   a   FWRITE_ASCII_3D%FILESPEC "   nE  �   a   FWRITE_ASCII_3D%X $   BF  �   a   FWRITE_ASCII_3D%TAB *   G  L   a   FWRITE_ASCII_3D%ZONETITLE     bG  �      DWRITE_ASCII_3D %   (H  =      DWRITE_ASCII_3D%SIZE (   eH  @      DWRITE_ASCII_3D%PRESENT %   �H  =      DWRITE_ASCII_3D%TRIM )   �H  V   a   DWRITE_ASCII_3D%FILESPEC "   8I  �   a   DWRITE_ASCII_3D%X $   J  �   a   DWRITE_ASCII_3D%TAB *   �J  L   a   DWRITE_ASCII_3D%ZONETITLE     ,K  �      IWRITE_ASCII_3D %   �K  =      IWRITE_ASCII_3D%SIZE (   /L  @      IWRITE_ASCII_3D%PRESENT %   oL  =      IWRITE_ASCII_3D%TRIM )   �L  V   a   IWRITE_ASCII_3D%FILESPEC "   M  �   a   IWRITE_ASCII_3D%X $   �M  �   a   IWRITE_ASCII_3D%TAB *   �N  L   a   IWRITE_ASCII_3D%ZONETITLE    �N  �       FILETYPE "   �O  P   a   FILETYPE%FILENAME "   �O  P   a   FILETYPE%RWACCESS    /P  �   a   FILETYPE%EXIST    �P  H   a   FILETYPE%FID "   Q  �  a   FILETYPE%VARNAMES    �R  �  a   FILETYPE%TITLE    �T  m       TEC_OPENFILE "   �T  =      TEC_OPENFILE%TRIM &   3U  V   a   TEC_OPENFILE%FILESPEC    �U  V       TEC_CLOSEFILE '   �U  V   a   TEC_CLOSEFILE%FILESPEC !   5V  q       TEC_WRITE_HEADER &   �V  =      TEC_WRITE_HEADER%TRIM *   �V  V   a   TEC_WRITE_HEADER%FILESPEC "   9W  �       TEC_GET_ZONE_2D_S *   X  @      TEC_GET_ZONE_2D_S%ADJUSTL *   UX  @      TEC_GET_ZONE_2D_S%PRESENT +   �X  A      TEC_GET_ZONE_2D_S%LEN_TRIM +   �X  V   a   TEC_GET_ZONE_2D_S%FILESPEC %   ,Y  @   a   TEC_GET_ZONE_2D_S%NX %   lY  @   a   TEC_GET_ZONE_2D_S%NY %   �Y  @   a   TEC_GET_ZONE_2D_S%NC -   �Y  L   a   TEC_GET_ZONE_2D_S%ZONE_TITLE 