 set terminal png nocrop enhanced font 'Times,30' fontscale 0.75 size 960,720
 set view map
 unset key
 set size square
 set xrange[0:100]
set yrange[0:100]
 rgb(r,g,b) = int(r)*65536 + int(g)*256 + int(b)
 set xlabel '{/Times-Italic x}'
 set ylabel '{/Times-Italic y}'
set title '{/Times-Italic t} =    0'
set output 'CelAut_v3.0_0000.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0000.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 0
set title '{/Times-Italic t} =    1'
set output 'CelAut_v3.0_0001.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0001.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 1
set title '{/Times-Italic t} =    2'
set output 'CelAut_v3.0_0002.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0002.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 2
set title '{/Times-Italic t} =    3'
set output 'CelAut_v3.0_0003.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0003.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 3
set title '{/Times-Italic t} =    4'
set output 'CelAut_v3.0_0004.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0004.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 4
set title '{/Times-Italic t} =    5'
set output 'CelAut_v3.0_0005.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0005.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 5
set title '{/Times-Italic t} =    6'
set output 'CelAut_v3.0_0006.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0006.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 6
set title '{/Times-Italic t} =    7'
set output 'CelAut_v3.0_0007.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0007.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 7
set title '{/Times-Italic t} =    8'
set output 'CelAut_v3.0_0008.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0008.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 8
set title '{/Times-Italic t} =    9'
set output 'CelAut_v3.0_0009.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0009.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 9
set title '{/Times-Italic t} =   10'
set output 'CelAut_v3.0_0010.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0010.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 10
set title '{/Times-Italic t} =   11'
set output 'CelAut_v3.0_0011.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0011.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 11
set title '{/Times-Italic t} =   12'
set output 'CelAut_v3.0_0012.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0012.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 12
set title '{/Times-Italic t} =   13'
set output 'CelAut_v3.0_0013.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0013.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 13
set title '{/Times-Italic t} =   14'
set output 'CelAut_v3.0_0014.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0014.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 14
set title '{/Times-Italic t} =   15'
set output 'CelAut_v3.0_0015.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0015.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 15
set title '{/Times-Italic t} =   16'
set output 'CelAut_v3.0_0016.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0016.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 16
set title '{/Times-Italic t} =   17'
set output 'CelAut_v3.0_0017.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0017.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 17
set title '{/Times-Italic t} =   18'
set output 'CelAut_v3.0_0018.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0018.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 18
set title '{/Times-Italic t} =   19'
set output 'CelAut_v3.0_0019.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0019.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 19
set title '{/Times-Italic t} =   20'
set output 'CelAut_v3.0_0020.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0020.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 20
set title '{/Times-Italic t} =   21'
set output 'CelAut_v3.0_0021.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0021.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 21
set title '{/Times-Italic t} =   22'
set output 'CelAut_v3.0_0022.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0022.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 22
set title '{/Times-Italic t} =   23'
set output 'CelAut_v3.0_0023.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0023.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 23
set title '{/Times-Italic t} =   24'
set output 'CelAut_v3.0_0024.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0024.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 24
set title '{/Times-Italic t} =   25'
set output 'CelAut_v3.0_0025.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0025.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 25
set title '{/Times-Italic t} =   26'
set output 'CelAut_v3.0_0026.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0026.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 26
set title '{/Times-Italic t} =   27'
set output 'CelAut_v3.0_0027.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0027.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 27
set title '{/Times-Italic t} =   28'
set output 'CelAut_v3.0_0028.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0028.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 28
set title '{/Times-Italic t} =   29'
set output 'CelAut_v3.0_0029.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0029.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 29
set title '{/Times-Italic t} =   30'
set output 'CelAut_v3.0_0030.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0030.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 30
set title '{/Times-Italic t} =   31'
set output 'CelAut_v3.0_0031.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0031.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 31
set title '{/Times-Italic t} =   32'
set output 'CelAut_v3.0_0032.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0032.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 32
set title '{/Times-Italic t} =   33'
set output 'CelAut_v3.0_0033.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0033.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 33
set title '{/Times-Italic t} =   34'
set output 'CelAut_v3.0_0034.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0034.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 34
set title '{/Times-Italic t} =   35'
set output 'CelAut_v3.0_0035.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0035.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 35
set title '{/Times-Italic t} =   36'
set output 'CelAut_v3.0_0036.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0036.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 36
set title '{/Times-Italic t} =   37'
set output 'CelAut_v3.0_0037.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0037.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 37
set title '{/Times-Italic t} =   38'
set output 'CelAut_v3.0_0038.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0038.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 38
set title '{/Times-Italic t} =   39'
set output 'CelAut_v3.0_0039.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0039.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 39
set title '{/Times-Italic t} =   40'
set output 'CelAut_v3.0_0040.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0040.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 40
set title '{/Times-Italic t} =   41'
set output 'CelAut_v3.0_0041.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0041.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 41
set title '{/Times-Italic t} =   42'
set output 'CelAut_v3.0_0042.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0042.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 42
set title '{/Times-Italic t} =   43'
set output 'CelAut_v3.0_0043.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0043.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 43
set title '{/Times-Italic t} =   44'
set output 'CelAut_v3.0_0044.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0044.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 44
set title '{/Times-Italic t} =   45'
set output 'CelAut_v3.0_0045.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0045.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 45
set title '{/Times-Italic t} =   46'
set output 'CelAut_v3.0_0046.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0046.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 46
set title '{/Times-Italic t} =   47'
set output 'CelAut_v3.0_0047.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0047.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 47
set title '{/Times-Italic t} =   48'
set output 'CelAut_v3.0_0048.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0048.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 48
set title '{/Times-Italic t} =   49'
set output 'CelAut_v3.0_0049.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0049.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 49
set title '{/Times-Italic t} =   50'
set output 'CelAut_v3.0_0050.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0050.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 50
set title '{/Times-Italic t} =   51'
set output 'CelAut_v3.0_0051.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0051.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 51
set title '{/Times-Italic t} =   52'
set output 'CelAut_v3.0_0052.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0052.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 52
set title '{/Times-Italic t} =   53'
set output 'CelAut_v3.0_0053.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0053.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 53
set title '{/Times-Italic t} =   54'
set output 'CelAut_v3.0_0054.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0054.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 54
set title '{/Times-Italic t} =   55'
set output 'CelAut_v3.0_0055.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0055.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 55
set title '{/Times-Italic t} =   56'
set output 'CelAut_v3.0_0056.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0056.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 56
set title '{/Times-Italic t} =   57'
set output 'CelAut_v3.0_0057.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0057.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 57
set title '{/Times-Italic t} =   58'
set output 'CelAut_v3.0_0058.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0058.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 58
set title '{/Times-Italic t} =   59'
set output 'CelAut_v3.0_0059.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0059.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 59
set title '{/Times-Italic t} =   60'
set output 'CelAut_v3.0_0060.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0060.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 60
set title '{/Times-Italic t} =   61'
set output 'CelAut_v3.0_0061.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0061.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 61
set title '{/Times-Italic t} =   62'
set output 'CelAut_v3.0_0062.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0062.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 62
set title '{/Times-Italic t} =   63'
set output 'CelAut_v3.0_0063.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0063.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 63
set title '{/Times-Italic t} =   64'
set output 'CelAut_v3.0_0064.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0064.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 64
set title '{/Times-Italic t} =   65'
set output 'CelAut_v3.0_0065.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0065.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 65
set title '{/Times-Italic t} =   66'
set output 'CelAut_v3.0_0066.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0066.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 66
set title '{/Times-Italic t} =   67'
set output 'CelAut_v3.0_0067.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0067.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 67
set title '{/Times-Italic t} =   68'
set output 'CelAut_v3.0_0068.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0068.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 68
set title '{/Times-Italic t} =   69'
set output 'CelAut_v3.0_0069.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0069.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 69
set title '{/Times-Italic t} =   70'
set output 'CelAut_v3.0_0070.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0070.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 70
set title '{/Times-Italic t} =   71'
set output 'CelAut_v3.0_0071.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0071.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 71
set title '{/Times-Italic t} =   72'
set output 'CelAut_v3.0_0072.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0072.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 72
set title '{/Times-Italic t} =   73'
set output 'CelAut_v3.0_0073.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0073.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 73
set title '{/Times-Italic t} =   74'
set output 'CelAut_v3.0_0074.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0074.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 74
set title '{/Times-Italic t} =   75'
set output 'CelAut_v3.0_0075.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0075.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 75
set title '{/Times-Italic t} =   76'
set output 'CelAut_v3.0_0076.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0076.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 76
set title '{/Times-Italic t} =   77'
set output 'CelAut_v3.0_0077.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0077.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 77
set title '{/Times-Italic t} =   78'
set output 'CelAut_v3.0_0078.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0078.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 78
set title '{/Times-Italic t} =   79'
set output 'CelAut_v3.0_0079.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0079.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 79
set title '{/Times-Italic t} =   80'
set output 'CelAut_v3.0_0080.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0080.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 80
set title '{/Times-Italic t} =   81'
set output 'CelAut_v3.0_0081.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0081.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 81
set title '{/Times-Italic t} =   82'
set output 'CelAut_v3.0_0082.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0082.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 82
set title '{/Times-Italic t} =   83'
set output 'CelAut_v3.0_0083.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0083.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 83
set title '{/Times-Italic t} =   84'
set output 'CelAut_v3.0_0084.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0084.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 84
set title '{/Times-Italic t} =   85'
set output 'CelAut_v3.0_0085.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0085.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 85
set title '{/Times-Italic t} =   86'
set output 'CelAut_v3.0_0086.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0086.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 86
set title '{/Times-Italic t} =   87'
set output 'CelAut_v3.0_0087.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0087.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 87
set title '{/Times-Italic t} =   88'
set output 'CelAut_v3.0_0088.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0088.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 88
set title '{/Times-Italic t} =   89'
set output 'CelAut_v3.0_0089.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0089.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 89
set title '{/Times-Italic t} =   90'
set output 'CelAut_v3.0_0090.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0090.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 90
set title '{/Times-Italic t} =   91'
set output 'CelAut_v3.0_0091.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0091.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 91
set title '{/Times-Italic t} =   92'
set output 'CelAut_v3.0_0092.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0092.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 92
set title '{/Times-Italic t} =   93'
set output 'CelAut_v3.0_0093.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0093.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 93
set title '{/Times-Italic t} =   94'
set output 'CelAut_v3.0_0094.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0094.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 94
set title '{/Times-Italic t} =   95'
set output 'CelAut_v3.0_0095.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0095.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 95
set title '{/Times-Italic t} =   96'
set output 'CelAut_v3.0_0096.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0096.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 96
set title '{/Times-Italic t} =   97'
set output 'CelAut_v3.0_0097.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0097.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 97
set title '{/Times-Italic t} =   98'
set output 'CelAut_v3.0_0098.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0098.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 98
set title '{/Times-Italic t} =   99'
set output 'CelAut_v3.0_0099.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0099.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 99
set title '{/Times-Italic t} =  100'
set output 'CelAut_v3.0_0100.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0100.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 100
set title '{/Times-Italic t} =  101'
set output 'CelAut_v3.0_0101.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0101.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 101
set title '{/Times-Italic t} =  102'
set output 'CelAut_v3.0_0102.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0102.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 102
set title '{/Times-Italic t} =  103'
set output 'CelAut_v3.0_0103.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0103.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 103
set title '{/Times-Italic t} =  104'
set output 'CelAut_v3.0_0104.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0104.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 104
set title '{/Times-Italic t} =  105'
set output 'CelAut_v3.0_0105.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0105.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 105
set title '{/Times-Italic t} =  106'
set output 'CelAut_v3.0_0106.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0106.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 106
set title '{/Times-Italic t} =  107'
set output 'CelAut_v3.0_0107.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0107.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 107
set title '{/Times-Italic t} =  108'
set output 'CelAut_v3.0_0108.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0108.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 108
set title '{/Times-Italic t} =  109'
set output 'CelAut_v3.0_0109.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0109.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 109
set title '{/Times-Italic t} =  110'
set output 'CelAut_v3.0_0110.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0110.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 110
set title '{/Times-Italic t} =  111'
set output 'CelAut_v3.0_0111.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0111.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 111
set title '{/Times-Italic t} =  112'
set output 'CelAut_v3.0_0112.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0112.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 112
set title '{/Times-Italic t} =  113'
set output 'CelAut_v3.0_0113.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0113.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 113
set title '{/Times-Italic t} =  114'
set output 'CelAut_v3.0_0114.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0114.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 114
set title '{/Times-Italic t} =  115'
set output 'CelAut_v3.0_0115.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0115.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 115
set title '{/Times-Italic t} =  116'
set output 'CelAut_v3.0_0116.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0116.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 116
set title '{/Times-Italic t} =  117'
set output 'CelAut_v3.0_0117.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0117.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 117
set title '{/Times-Italic t} =  118'
set output 'CelAut_v3.0_0118.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0118.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 118
set title '{/Times-Italic t} =  119'
set output 'CelAut_v3.0_0119.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0119.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 119
set title '{/Times-Italic t} =  120'
set output 'CelAut_v3.0_0120.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0120.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 120
set title '{/Times-Italic t} =  121'
set output 'CelAut_v3.0_0121.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0121.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 121
set title '{/Times-Italic t} =  122'
set output 'CelAut_v3.0_0122.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0122.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 122
set title '{/Times-Italic t} =  123'
set output 'CelAut_v3.0_0123.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0123.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 123
set title '{/Times-Italic t} =  124'
set output 'CelAut_v3.0_0124.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0124.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 124
set title '{/Times-Italic t} =  125'
set output 'CelAut_v3.0_0125.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0125.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 125
set title '{/Times-Italic t} =  126'
set output 'CelAut_v3.0_0126.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0126.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 126
set title '{/Times-Italic t} =  127'
set output 'CelAut_v3.0_0127.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0127.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 127
set title '{/Times-Italic t} =  128'
set output 'CelAut_v3.0_0128.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0128.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 128
set title '{/Times-Italic t} =  129'
set output 'CelAut_v3.0_0129.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0129.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 129
set title '{/Times-Italic t} =  130'
set output 'CelAut_v3.0_0130.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0130.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 130
set title '{/Times-Italic t} =  131'
set output 'CelAut_v3.0_0131.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0131.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 131
set title '{/Times-Italic t} =  132'
set output 'CelAut_v3.0_0132.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0132.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 132
set title '{/Times-Italic t} =  133'
set output 'CelAut_v3.0_0133.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0133.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 133
set title '{/Times-Italic t} =  134'
set output 'CelAut_v3.0_0134.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0134.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 134
set title '{/Times-Italic t} =  135'
set output 'CelAut_v3.0_0135.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0135.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 135
set title '{/Times-Italic t} =  136'
set output 'CelAut_v3.0_0136.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0136.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 136
set title '{/Times-Italic t} =  137'
set output 'CelAut_v3.0_0137.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0137.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 137
set title '{/Times-Italic t} =  138'
set output 'CelAut_v3.0_0138.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0138.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 138
set title '{/Times-Italic t} =  139'
set output 'CelAut_v3.0_0139.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0139.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 139
set title '{/Times-Italic t} =  140'
set output 'CelAut_v3.0_0140.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0140.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 140
set title '{/Times-Italic t} =  141'
set output 'CelAut_v3.0_0141.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0141.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 141
set title '{/Times-Italic t} =  142'
set output 'CelAut_v3.0_0142.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0142.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 142
set title '{/Times-Italic t} =  143'
set output 'CelAut_v3.0_0143.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0143.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 143
set title '{/Times-Italic t} =  144'
set output 'CelAut_v3.0_0144.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0144.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 144
set title '{/Times-Italic t} =  145'
set output 'CelAut_v3.0_0145.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0145.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 145
set title '{/Times-Italic t} =  146'
set output 'CelAut_v3.0_0146.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0146.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 146
set title '{/Times-Italic t} =  147'
set output 'CelAut_v3.0_0147.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0147.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 147
set title '{/Times-Italic t} =  148'
set output 'CelAut_v3.0_0148.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0148.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 148
set title '{/Times-Italic t} =  149'
set output 'CelAut_v3.0_0149.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0149.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 149
set title '{/Times-Italic t} =  150'
set output 'CelAut_v3.0_0150.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0150.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 150
set title '{/Times-Italic t} =  151'
set output 'CelAut_v3.0_0151.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0151.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 151
set title '{/Times-Italic t} =  152'
set output 'CelAut_v3.0_0152.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0152.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 152
set title '{/Times-Italic t} =  153'
set output 'CelAut_v3.0_0153.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0153.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 153
set title '{/Times-Italic t} =  154'
set output 'CelAut_v3.0_0154.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0154.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 154
set title '{/Times-Italic t} =  155'
set output 'CelAut_v3.0_0155.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0155.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 155
set title '{/Times-Italic t} =  156'
set output 'CelAut_v3.0_0156.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0156.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 156
set title '{/Times-Italic t} =  157'
set output 'CelAut_v3.0_0157.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0157.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 157
set title '{/Times-Italic t} =  158'
set output 'CelAut_v3.0_0158.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0158.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 158
set title '{/Times-Italic t} =  159'
set output 'CelAut_v3.0_0159.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0159.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 159
set title '{/Times-Italic t} =  160'
set output 'CelAut_v3.0_0160.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0160.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 160
set title '{/Times-Italic t} =  161'
set output 'CelAut_v3.0_0161.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0161.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 161
set title '{/Times-Italic t} =  162'
set output 'CelAut_v3.0_0162.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0162.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 162
set title '{/Times-Italic t} =  163'
set output 'CelAut_v3.0_0163.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0163.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 163
set title '{/Times-Italic t} =  164'
set output 'CelAut_v3.0_0164.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0164.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 164
set title '{/Times-Italic t} =  165'
set output 'CelAut_v3.0_0165.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0165.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 165
set title '{/Times-Italic t} =  166'
set output 'CelAut_v3.0_0166.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0166.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 166
set title '{/Times-Italic t} =  167'
set output 'CelAut_v3.0_0167.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0167.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 167
set title '{/Times-Italic t} =  168'
set output 'CelAut_v3.0_0168.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0168.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 168
set title '{/Times-Italic t} =  169'
set output 'CelAut_v3.0_0169.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0169.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 169
set title '{/Times-Italic t} =  170'
set output 'CelAut_v3.0_0170.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0170.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 170
set title '{/Times-Italic t} =  171'
set output 'CelAut_v3.0_0171.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0171.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 171
set title '{/Times-Italic t} =  172'
set output 'CelAut_v3.0_0172.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0172.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 172
set title '{/Times-Italic t} =  173'
set output 'CelAut_v3.0_0173.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0173.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 173
set title '{/Times-Italic t} =  174'
set output 'CelAut_v3.0_0174.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0174.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 174
set title '{/Times-Italic t} =  175'
set output 'CelAut_v3.0_0175.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0175.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 175
set title '{/Times-Italic t} =  176'
set output 'CelAut_v3.0_0176.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0176.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 176
set title '{/Times-Italic t} =  177'
set output 'CelAut_v3.0_0177.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0177.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 177
set title '{/Times-Italic t} =  178'
set output 'CelAut_v3.0_0178.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0178.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 178
set title '{/Times-Italic t} =  179'
set output 'CelAut_v3.0_0179.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0179.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 179
set title '{/Times-Italic t} =  180'
set output 'CelAut_v3.0_0180.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0180.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 180
set title '{/Times-Italic t} =  181'
set output 'CelAut_v3.0_0181.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0181.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 181
set title '{/Times-Italic t} =  182'
set output 'CelAut_v3.0_0182.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0182.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 182
set title '{/Times-Italic t} =  183'
set output 'CelAut_v3.0_0183.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0183.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 183
set title '{/Times-Italic t} =  184'
set output 'CelAut_v3.0_0184.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0184.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 184
set title '{/Times-Italic t} =  185'
set output 'CelAut_v3.0_0185.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0185.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 185
set title '{/Times-Italic t} =  186'
set output 'CelAut_v3.0_0186.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0186.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 186
set title '{/Times-Italic t} =  187'
set output 'CelAut_v3.0_0187.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0187.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 187
set title '{/Times-Italic t} =  188'
set output 'CelAut_v3.0_0188.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0188.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 188
set title '{/Times-Italic t} =  189'
set output 'CelAut_v3.0_0189.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0189.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 189
set title '{/Times-Italic t} =  190'
set output 'CelAut_v3.0_0190.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0190.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 190
set title '{/Times-Italic t} =  191'
set output 'CelAut_v3.0_0191.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0191.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 191
set title '{/Times-Italic t} =  192'
set output 'CelAut_v3.0_0192.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0192.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 192
set title '{/Times-Italic t} =  193'
set output 'CelAut_v3.0_0193.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0193.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 193
set title '{/Times-Italic t} =  194'
set output 'CelAut_v3.0_0194.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0194.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 194
set title '{/Times-Italic t} =  195'
set output 'CelAut_v3.0_0195.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0195.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 195
set title '{/Times-Italic t} =  196'
set output 'CelAut_v3.0_0196.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0196.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 196
set title '{/Times-Italic t} =  197'
set output 'CelAut_v3.0_0197.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0197.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 197
set title '{/Times-Italic t} =  198'
set output 'CelAut_v3.0_0198.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0198.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 198
set title '{/Times-Italic t} =  199'
set output 'CelAut_v3.0_0199.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0199.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 199
set title '{/Times-Italic t} =  200'
set output 'CelAut_v3.0_0200.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0200.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 200
set title '{/Times-Italic t} =  201'
set output 'CelAut_v3.0_0201.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0201.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 201
set title '{/Times-Italic t} =  202'
set output 'CelAut_v3.0_0202.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0202.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 202
set title '{/Times-Italic t} =  203'
set output 'CelAut_v3.0_0203.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0203.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 203
set title '{/Times-Italic t} =  204'
set output 'CelAut_v3.0_0204.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0204.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 204
set title '{/Times-Italic t} =  205'
set output 'CelAut_v3.0_0205.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0205.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 205
set title '{/Times-Italic t} =  206'
set output 'CelAut_v3.0_0206.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0206.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 206
set title '{/Times-Italic t} =  207'
set output 'CelAut_v3.0_0207.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0207.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 207
set title '{/Times-Italic t} =  208'
set output 'CelAut_v3.0_0208.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0208.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 208
set title '{/Times-Italic t} =  209'
set output 'CelAut_v3.0_0209.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0209.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 209
set title '{/Times-Italic t} =  210'
set output 'CelAut_v3.0_0210.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0210.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 210
set title '{/Times-Italic t} =  211'
set output 'CelAut_v3.0_0211.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0211.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 211
set title '{/Times-Italic t} =  212'
set output 'CelAut_v3.0_0212.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0212.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 212
set title '{/Times-Italic t} =  213'
set output 'CelAut_v3.0_0213.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0213.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 213
set title '{/Times-Italic t} =  214'
set output 'CelAut_v3.0_0214.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0214.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 214
set title '{/Times-Italic t} =  215'
set output 'CelAut_v3.0_0215.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0215.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 215
set title '{/Times-Italic t} =  216'
set output 'CelAut_v3.0_0216.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0216.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 216
set title '{/Times-Italic t} =  217'
set output 'CelAut_v3.0_0217.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0217.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 217
set title '{/Times-Italic t} =  218'
set output 'CelAut_v3.0_0218.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0218.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 218
set title '{/Times-Italic t} =  219'
set output 'CelAut_v3.0_0219.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0219.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 219
set title '{/Times-Italic t} =  220'
set output 'CelAut_v3.0_0220.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0220.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 220
set title '{/Times-Italic t} =  221'
set output 'CelAut_v3.0_0221.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0221.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 221
set title '{/Times-Italic t} =  222'
set output 'CelAut_v3.0_0222.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0222.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 222
set title '{/Times-Italic t} =  223'
set output 'CelAut_v3.0_0223.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0223.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 223
set title '{/Times-Italic t} =  224'
set output 'CelAut_v3.0_0224.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0224.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 224
set title '{/Times-Italic t} =  225'
set output 'CelAut_v3.0_0225.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0225.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 225
set title '{/Times-Italic t} =  226'
set output 'CelAut_v3.0_0226.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0226.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 226
set title '{/Times-Italic t} =  227'
set output 'CelAut_v3.0_0227.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0227.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 227
set title '{/Times-Italic t} =  228'
set output 'CelAut_v3.0_0228.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0228.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 228
set title '{/Times-Italic t} =  229'
set output 'CelAut_v3.0_0229.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0229.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 229
set title '{/Times-Italic t} =  230'
set output 'CelAut_v3.0_0230.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0230.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 230
set title '{/Times-Italic t} =  231'
set output 'CelAut_v3.0_0231.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0231.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 231
set title '{/Times-Italic t} =  232'
set output 'CelAut_v3.0_0232.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0232.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 232
set title '{/Times-Italic t} =  233'
set output 'CelAut_v3.0_0233.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0233.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 233
set title '{/Times-Italic t} =  234'
set output 'CelAut_v3.0_0234.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0234.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 234
set title '{/Times-Italic t} =  235'
set output 'CelAut_v3.0_0235.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0235.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 235
set title '{/Times-Italic t} =  236'
set output 'CelAut_v3.0_0236.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0236.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 236
set title '{/Times-Italic t} =  237'
set output 'CelAut_v3.0_0237.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0237.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 237
set title '{/Times-Italic t} =  238'
set output 'CelAut_v3.0_0238.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0238.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 238
set title '{/Times-Italic t} =  239'
set output 'CelAut_v3.0_0239.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0239.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 239
set title '{/Times-Italic t} =  240'
set output 'CelAut_v3.0_0240.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0240.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 240
set title '{/Times-Italic t} =  241'
set output 'CelAut_v3.0_0241.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0241.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 241
set title '{/Times-Italic t} =  242'
set output 'CelAut_v3.0_0242.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0242.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 242
set title '{/Times-Italic t} =  243'
set output 'CelAut_v3.0_0243.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0243.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 243
set title '{/Times-Italic t} =  244'
set output 'CelAut_v3.0_0244.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0244.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 244
set title '{/Times-Italic t} =  245'
set output 'CelAut_v3.0_0245.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0245.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 245
set title '{/Times-Italic t} =  246'
set output 'CelAut_v3.0_0246.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0246.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 246
set title '{/Times-Italic t} =  247'
set output 'CelAut_v3.0_0247.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0247.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 247
set title '{/Times-Italic t} =  248'
set output 'CelAut_v3.0_0248.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0248.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 248
set title '{/Times-Italic t} =  249'
set output 'CelAut_v3.0_0249.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0249.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 249
set title '{/Times-Italic t} =  250'
set output 'CelAut_v3.0_0250.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0250.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 250
set title '{/Times-Italic t} =  251'
set output 'CelAut_v3.0_0251.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0251.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 251
set title '{/Times-Italic t} =  252'
set output 'CelAut_v3.0_0252.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0252.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 252
set title '{/Times-Italic t} =  253'
set output 'CelAut_v3.0_0253.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0253.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 253
set title '{/Times-Italic t} =  254'
set output 'CelAut_v3.0_0254.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0254.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 254
set title '{/Times-Italic t} =  255'
set output 'CelAut_v3.0_0255.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0255.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 255
set title '{/Times-Italic t} =  256'
set output 'CelAut_v3.0_0256.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0256.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 256
set title '{/Times-Italic t} =  257'
set output 'CelAut_v3.0_0257.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0257.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 257
set title '{/Times-Italic t} =  258'
set output 'CelAut_v3.0_0258.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0258.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 258
set title '{/Times-Italic t} =  259'
set output 'CelAut_v3.0_0259.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0259.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 259
set title '{/Times-Italic t} =  260'
set output 'CelAut_v3.0_0260.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0260.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 260
set title '{/Times-Italic t} =  261'
set output 'CelAut_v3.0_0261.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0261.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 261
set title '{/Times-Italic t} =  262'
set output 'CelAut_v3.0_0262.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0262.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 262
set title '{/Times-Italic t} =  263'
set output 'CelAut_v3.0_0263.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0263.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 263
set title '{/Times-Italic t} =  264'
set output 'CelAut_v3.0_0264.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0264.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 264
set title '{/Times-Italic t} =  265'
set output 'CelAut_v3.0_0265.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0265.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 265
set title '{/Times-Italic t} =  266'
set output 'CelAut_v3.0_0266.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0266.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 266
set title '{/Times-Italic t} =  267'
set output 'CelAut_v3.0_0267.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0267.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 267
set title '{/Times-Italic t} =  268'
set output 'CelAut_v3.0_0268.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0268.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 268
set title '{/Times-Italic t} =  269'
set output 'CelAut_v3.0_0269.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0269.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 269
set title '{/Times-Italic t} =  270'
set output 'CelAut_v3.0_0270.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0270.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 270
set title '{/Times-Italic t} =  271'
set output 'CelAut_v3.0_0271.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0271.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 271
set title '{/Times-Italic t} =  272'
set output 'CelAut_v3.0_0272.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0272.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 272
set title '{/Times-Italic t} =  273'
set output 'CelAut_v3.0_0273.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0273.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 273
set title '{/Times-Italic t} =  274'
set output 'CelAut_v3.0_0274.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0274.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 274
set title '{/Times-Italic t} =  275'
set output 'CelAut_v3.0_0275.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0275.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 275
set title '{/Times-Italic t} =  276'
set output 'CelAut_v3.0_0276.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0276.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 276
set title '{/Times-Italic t} =  277'
set output 'CelAut_v3.0_0277.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0277.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 277
set title '{/Times-Italic t} =  278'
set output 'CelAut_v3.0_0278.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0278.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 278
set title '{/Times-Italic t} =  279'
set output 'CelAut_v3.0_0279.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0279.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 279
set title '{/Times-Italic t} =  280'
set output 'CelAut_v3.0_0280.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0280.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 280
set title '{/Times-Italic t} =  281'
set output 'CelAut_v3.0_0281.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0281.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 281
set title '{/Times-Italic t} =  282'
set output 'CelAut_v3.0_0282.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0282.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 282
set title '{/Times-Italic t} =  283'
set output 'CelAut_v3.0_0283.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0283.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 283
set title '{/Times-Italic t} =  284'
set output 'CelAut_v3.0_0284.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0284.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 284
set title '{/Times-Italic t} =  285'
set output 'CelAut_v3.0_0285.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0285.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 285
set title '{/Times-Italic t} =  286'
set output 'CelAut_v3.0_0286.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0286.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 286
set title '{/Times-Italic t} =  287'
set output 'CelAut_v3.0_0287.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0287.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 287
set title '{/Times-Italic t} =  288'
set output 'CelAut_v3.0_0288.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0288.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 288
set title '{/Times-Italic t} =  289'
set output 'CelAut_v3.0_0289.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0289.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 289
set title '{/Times-Italic t} =  290'
set output 'CelAut_v3.0_0290.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0290.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 290
set title '{/Times-Italic t} =  291'
set output 'CelAut_v3.0_0291.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0291.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 291
set title '{/Times-Italic t} =  292'
set output 'CelAut_v3.0_0292.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0292.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 292
set title '{/Times-Italic t} =  293'
set output 'CelAut_v3.0_0293.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0293.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 293
set title '{/Times-Italic t} =  294'
set output 'CelAut_v3.0_0294.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0294.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 294
set title '{/Times-Italic t} =  295'
set output 'CelAut_v3.0_0295.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0295.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 295
set title '{/Times-Italic t} =  296'
set output 'CelAut_v3.0_0296.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0296.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 296
set title '{/Times-Italic t} =  297'
set output 'CelAut_v3.0_0297.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0297.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 297
set title '{/Times-Italic t} =  298'
set output 'CelAut_v3.0_0298.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0298.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 298
set title '{/Times-Italic t} =  299'
set output 'CelAut_v3.0_0299.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0299.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 299
set title '{/Times-Italic t} =  300'
set output 'CelAut_v3.0_0300.png'
plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t0300.dat' u 1:2 w p pt 7 ps 1 lc 1 
unset output
print 300
