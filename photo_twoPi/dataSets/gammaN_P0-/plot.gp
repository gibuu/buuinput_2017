set xlabel 'E_gamma [MeV]'
set ylabel 'sigma(mub)'
plot "gamn_p-0_daphneNew.dat" u 1:2:3 w e t 'new Daphne'\
, "p-0.dat" w e t 'GDH'\
,"fit/gamn-ppim0.dat" u ($1*1000):2 w l t 'our fit'
pause -1
#    EOF
