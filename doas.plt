reset
set term svg enhanced mouse size 720,540 fsize 20 name "Sim_DOAS" rounded
set output 'Sim_DOAS.svg'
set title "Simulation of DOAS"
g(x)=A*exp(-(x-B)**2/(2*C**2))
A=0.5
B=250
C=80
fit g(x) "CelAut_Mss.dat" u 1:(log(1/$2)) via A,B,C
unset key
set xlabel "Position x"
set ylabel "ln(I_0/I(x))"
set xtics 100
plot "CelAut_Mss.dat" u 1:(log(1/$2)) w p pt 7 ps 0.4, g(x) lw 3 lc 3
unset output