reset
f(x)=a0+a1*x+a2*x**2+a3*x**3+a4*x**4+a5*x**5+a6*x**6+a7*x**7
fit [300:900]f(x) "allData" u 1:2:3 via a0,a1,a2,a3,a4,a5,a6,a7
plot "allData", f(x)
pause -1
