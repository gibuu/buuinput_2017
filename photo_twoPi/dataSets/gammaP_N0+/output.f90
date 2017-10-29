program output

  implicit none
  real :: a0,a1,a2,a3,a4,a5,a6
  real :: energy
a0              = -1676.08    !     +/- 350.5        (20.91%)
a1              = 21.0685      !    +/- 4.228        (20.07%)
a2              = -0.108894     !   +/- 0.02094      (19.23%)
a3              = 0.000296492    !  +/- 5.451e-05    (18.38%)
a4              = -4.4931e-07     ! +/- 7.858e-08    (17.49%)
a5              = 3.59958e-10      !+/- 5.95e-11     (16.53%)
a6              = -1.18882e-13 



  open(100,file='fit.dat')

  do energy=0.35,0.78,0.01
     write(100,*) energy,f(energy*1000.)
  end do
  close(100)
contains
  real function f(x)
    implicit none
    real :: x
    f=a0+a1*x+a2*x**2+a3*x**3+a4*x**4+a5*x**5+a6*x**6!+a7*x**7
  end function f


end program output
