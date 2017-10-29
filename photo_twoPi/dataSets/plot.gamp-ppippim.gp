reset

unset bars

set log y
set yrange [10:]

set log x
set xrange [0.3:]

set xlabel "E_{/Symbol g} [GeV]"
set ylabel "{/Symbol s} [{/Symbol m}b]"

plot "LB.gamp-ppipm.dat" u 1:($3*1000):2:($4*1000) w xyerror lt 1 pt 5 ps 1 t "L.B.",\
     "SAPHIR.gamp-ppipm.dat" u ($1+$2)/2:3:($2-$1)/2:4 w xyerror lt 1 lc 4 pt 9 ps 2 t "SAPHIR, Wu05",\
     "../inputSets/effeInput/gamp-ppipm.dat" w lp t "EffeInput",\
     "../gamp-ppipm.dat" w lp t "BUU Input"

#          "Joos.gamp-ppipm.dat" u 1:5:2:3 w xyerror lt 1 lc 3 pt 7 ps 2 t "Joos",\
#     ,\
#     "../inputSets/effeInput/gamp-ppipm.dat" w lp