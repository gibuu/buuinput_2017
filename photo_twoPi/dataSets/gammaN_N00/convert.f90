program convert
implicit none
real :: egamma
real, dimension(1:6) :: sigma
open(10,file="igal_data.dat")
open(11,file="gamn-npi00.dat")
do
read(10,*) Egamma, sigma(1:6)
write(11,*) Egamma/1000., sigma(5)
end do
close(11)
end program
