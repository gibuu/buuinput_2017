program output

  implicit none
  real :: a0,a1,a2,a3,a4,a5,a6,a7
  real :: energy
a0              = -4612.55       !  +/- 1299         (28.16%)
a1              = 59.695         !  +/- 16.77        (28.09%)
a2              = -0.326901      !  +/- 0.09177      (28.07%)
a3              = 0.000982504    !  +/- 0.0002761    (28.1%)
a4              = -1.75171e-06   !  +/- 4.93e-07     (28.14%)
a5              = 1.85401e-09    !  +/- 5.224e-10    (28.18%)
a6              = -1.0788e-12    !  +/- 3.042e-13    (28.2%)
a7              = 2.66162e-16

  open(100,file='fit.dat')

  do energy=0.35,0.78,0.01
     write(100,*) energy,f(energy*1000.)
  end do
  close(100)
contains
  real function f(x)
    implicit none
    real :: x
    f=a0+a1*x+a2*x**2+a3*x**3+a4*x**4+a5*x**5+a6*x**6+a7*x**7
  end function f


end program output
