
set xlabel 'E_{/Symbol g}(MeV)'
set ylabel '{/Symbol s}  ({/Symbol m}b)'

#set xlabel 'E(gamma) [MeV]'
#set ylabel 'sigma (mub)'
plot   "gamn_p-0.dat"  u ($1*1000):3:4 w errorbars t 'old analysis'
replot "../gamn-ppim0.dat"  u ($1*1000):2 w lp t 'Input'
replot "gamn_p-0_daphneNew.dat" w errorbars t  'new analyis'
#    EOF
replot "../../../code/init/lowPhoton/twoPi_production/testRun/gammaNeutron.dat" u ($1*1000):4 w l

set terminal postscript eps color enhanced 'Helvetica' 23 lw 2 dl 2
set output 'daphne.eps'
replot
! epstopdf "daphne.eps"
pause -1
set output
set terminal x11
plot "gamp_n+0.dat"  u ($1*1000):3:4 w errorbars t 'Daphne'
replot "../gamp-npip0.dat"  u ($1*1000):2 w lp t 'Input'
replot "../../../code/init/lowPhoton/twoPi_production/testRun/gammaProton.dat" u ($1*1000):4 w l
pause -1

#set terminal postscript eps color enhanced 'Helvetica' 23 lw 2 dl 2
#set output 'daphne.eps'
#replot
! epstopdf "daphne.eps"

