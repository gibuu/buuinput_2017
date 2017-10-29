program main

  implicit none
  integer i, ios,j,jj,number
  integer, parameter :: Dateiende=-1
  integer, parameter :: anzahlWerte=4

  real, dimension(1:anzahlWerte)::  wert

  character(40) :: outfile,infile
  real,dimension (1:anzahlWerte) :: mittel 
  character :: binSize
  logical :: bigBin
  character(1) :: string

  Print *,"Diese Routine ermittelt aus Daten mit Fehlern dat-Files, die Obergrenzen und Untergrenzen angeben."

  Print *," Bitte Name des Outputfile angeben:"
  Read *, outfile
  Print *, " Die Ausgabe erfolgt in die Datei " , outfile,'_low.dat und' , outfile,'_up.dat'
  Print *," Bitte Name des Inputfile angeben:"
  Read *, infile
  Print *, " Input-File " , infile

  Open(41,File=infile,Action='READ')
  Open(11,File=trim(outfile)//'_low.dat')
  Open(12,File=trim(outfile)//'_up.dat')
  
  ! Header auslesen, Header muß "#" am Anfang haben
  do i=1,100
!     write(*,*) 'Header of ' ,infile
     read (41,*,IOSTAT=IOS) string
     write(*,*) string
     if (string.ne.'#') exit
  end do
  rewind(41)
  do j=1,i-1
     read (41,*,IOSTAT=IOS) string
  end do

  do i=1,100
     read (41,*,IOSTAT=IOS) wert(1:anzahlWerte) 
     if (IOS.eq.DATEIENDE) exit
     if (IOS.ne.DATEIENDE) then
        Write(11,'(4F8.3)') wert(1)+wert(2),wert(3)-wert(4)
        Write(12,'(4F8.3)') wert(1)-wert(2),wert(3)+wert(4)
     end if
  end do

  Close(11)
  Close(12)
  Close(41)

end program main
