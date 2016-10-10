#include <stdlib.h>
#include <stdio.h>
#include <iostream>

using namespace std;

int main(){
  for(int Width=1;Width<=20;Width++){
    FILE *dskr;
    int err=0;
    char FileName[50];
    float Count,Var;
    err=sprintf(FileName,"CelAut_v3.0_ave%04d.dat",Width);
    err++;
    dskr=fopen(FileName,"r+");
    fscanf(dskr,"%d %g %g\n",&Width,&Count,&Var);
    cout<<Width<<" "<<Count<<" "<<Var<<endl;
    fclose(dskr);
  }
  return 0;
}

/*
g++ data.C -o data
time ./data > output

 */
