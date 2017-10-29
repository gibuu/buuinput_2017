# gnuplot script to fit the data
f(x)=a+b*x+c*x**2+d*x**3
fit [430:800] f(x) "all_sort.dat" u 1:2 via a,b,c,d
