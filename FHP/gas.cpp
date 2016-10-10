#include <stdio.h>

int main(){
  FILE *dskw;
  dskw=fopen("gas.plt","w+");
  fprintf(dskw,"set terminal png nocrop enhanced font 'times,16' fontscale 0.75 size 640,480\n");
  fprintf(dskw,"set view map\n unset key\n set size square\n");
  fprintf(dskw,"set xrange[0:150]\nset yrange[0:500]\n");
  for(int i=0;i<1000;i++){
    fprintf(dskw,"set title 't=%5d'\n",i);
    fprintf(dskw,"set output 'gas_%03d.png'\n",i);
    fprintf(dskw,"plot 'proyectoX.dat' i %d u 1:2 w p pt 7 lc -1\n",i);
    fprintf(dskw,"unset output\n");
    fprintf(dskw,"print %d\n",i);
  }
  return 0;
}
