#include <stdio.h>

int main(){
  FILE *dskw;
  dskw=fopen("plot.plt","w+");
  fprintf(dskw," set terminal png nocrop enhanced font 'Times,30' fontscale 0.75 size 960,720\n");
  //set terminal svg size 600,400 dynamic enhanced fname 'times'  fsize 10 mousing name "enhanced_utf8_1" butt solid 
  fprintf(dskw," set view map\n unset key\n set size square\n set xrange[0:100]\nset yrange[0:100]\n rgb(r,g,b) = int(r)*65536 + int(g)*256 + int(b)\n set xlabel '{/Times-Italic x}'\n set ylabel '{/Times-Italic y}'\n");

  for(int i=0;i<=300;i++){
    fprintf(dskw,"set title '{/Times-Italic t} =%5d'\n",i);
    fprintf(dskw,"set output 'CelAut_v3.0_%04d.png'\n",i);
  //set output "CelAut_v1.0.svg"
    fprintf(dskw,"plot './Data/DOAS/CelAut_disp.dat' i 0 using 1:2:(rgb(255*(1-$3),255*(1-$3),255*(1-$3))) w p pt 7 lc rgb variable,'./Data/DOAS/CelAut_v3.0_t%04d.dat' u 1:2 w p pt 7 ps 1 lc 1 \n",i);// pt 7
    //fprintf(dskw,"plot './Data/DOAS/CelAut_v3.0_t%04d.dat' u 1:2 w p pt 7 ps 1 lc 1 \n",i);// pt 7
    fprintf(dskw,"unset output\n");
    fprintf(dskw,"print %d\n",i);
  }
  return 0;
}
