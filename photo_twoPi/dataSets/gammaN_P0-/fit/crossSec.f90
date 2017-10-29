! Fortran code to tabulate the fit
program crossSec
implicit none
real :: x
x=430
open(5,file='gamn-ppim0.dat')
do 
x=x+5
write(5,*) x/1000.,f(x) 
if(x.gt.800) exit
end do
close(5)

contains

real function f(x)
implicit none
real, intent(in) :: x ! Photon energy
real,parameter :: a               = 197.175       !   +/- 81.13        (41.14%)
real,parameter :: b               = -1.18048      !   +/- 0.4084       (34.6%)
real,parameter :: c               = 0.00221625    !   +/- 0.0006744    (30.43%)
real,parameter :: d               = -1.23048e-06  !   +/- 3.656e-07    (29.71%)

f=a+b*x+c*x**2+d*x**3
end function

end program crossSec
