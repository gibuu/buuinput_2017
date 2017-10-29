reset

set ylabel "sigma [mub]"

f1(x)=x
f2(x)=sqrt(0.938**2+2*0.938*x)

#set xlabel "E_gamma [GeV]"
#f(x)=f1(x)

set xlabel "W [GeV]"
f(x)=f2(x)

#set log y

unset bars

plot \
  "gamp-ppi00.dat" u (f($1)):2 w lp t 'gamma p -> p pi^0 pi^0' \
, "gamn-npi00.dat" u (f($1)):2 w lp t 'gamma n -> n pi^0 pi^0' \
, "gamn-ppim0.dat" u (f($1)):2 w lp t 'gamma n -> p pi^- pi^0' \
, "gamp-npip0.dat" u (f($1)):2 w lp t 'gamma p -> n pi^+ pi^0' \
, "gamp-ppipm.dat" u (f($1)):2 w lp t 'gamma p -> p pi^+ pi^-' \
, "gamn-npipm.dat" u (f($1)):2 w lp t 'gamma n -> n pi^+ pi^-' \
, "dataSets/Joos.gamp-ppipm.dat" u (f($1)):5:(f($1+$2)-f($1)) w xerr ps 2 t 'Joos76: gamma p -> p pi^+ pi^-'

pause -1
