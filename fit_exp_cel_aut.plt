set term png enhanced transparent truecolor large font "CMU Serif,18"
set output "fit_exp_cel_aut.png"
set xlabel "l"
set ylabel "I_{/Symbol l}(l)"
set grid
plot 500.*exp(-0.0421670240404*x) lw 2 lc 1 t "Teo","output" u 1:2 w p pt 7 lw 2 lc 3 t "Num"