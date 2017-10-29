################################
# this script interpolates a neutrino flux read from the file "nu.dat" and then rebins it
################################
#to run this script from linux shell use "pyxplot nu-akima.pyx"

# interpolate flux taken form the file "nu.dat" between 0 and 20, which are the first and the last points
set xrange [0:20]
interpolate akima nu() "nu.dat"

# plot data points and interpolated curve
plot  "nu.dat", nu(x)
set terminal eps color
set output "nu-akima.eps"
replot
set terminal

# tabulate interpolated curve with 201 points, for the range from 0 to 20 this gives binning 0.1
set output "nu-akima.dat"
set samples 201
tabulate nu(x)
unset output

# plot the curve and the points produced as the result of tabulation
set terminal eps color
set samples 2000
set output "nu-akima-small-steps.eps"
plot  "nu-akima.dat" with points ps 0.6, nu(x)
replot
set terminal
