#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>      
#include <iostream>

#define Nx 500
#define Ny 500
#define Ns 6
/* --------------------------------------
For SO2: 

~ 120ppb   = 29.511368691e17 molecules/m^3
  SecEff   = 1.42884e-21 m^2/molecule @ 293K 
       l   = 10 m
Wavelength = 203.646 nm   

 ->   SP = 4.21670240404e-2

   ----------------------------------------*/



#define SP 0.0421670240404
#define PI 3.14159265358979323846

typedef bool Lstate [Ns];
typedef Lstate State [Nx][Ny];

using namespace std;

double Pb[Nx][Ny];

void Init(State &phi){
  for(int x=0;x<Nx;x++){
    for(int y=0;y<Ny;y++)
      for(int s=0;s<Ns;s++)
	phi[x][y][s]=0;
    //    if((x>0)&&(x<Nx-1))
    //     phi[x][Ny-2][1]=1;
  }
  //phi[Nx/2][Ny-2][0]=1;  
}

void Evo(State &phi_0){
  State phi_t;
  double Rayleigh[6];
  Rayleigh[0]=1./6.;//1./12.*(2.+sqrt(3)/PI);
  Rayleigh[1]=1./6.;//1./6.-1./(8.*sqrt(3)*PI);
  Rayleigh[2]=Rayleigh[1];
  Rayleigh[3]=Rayleigh[1];
  Rayleigh[4]=Rayleigh[1];
  Rayleigh[5]=Rayleigh[0];
  for(int x=0;x<Nx;x++)
    for(int y=0;y<Ny;y++)
      for(int s=0;s<Ns;s++)
	phi_t[x][y][s]=0;
  for(int x=0;x<Nx;x++)
    for(int y=0;y<Ny;y++){
      int OccNei=0;
      int xn[Ns],yn[Ns];
      xn[0]=x;
      xn[1]=(x+1)%Nx;
      xn[2]=(x-1+Nx)%Nx;
      xn[3]=(x+1)%Nx;
      xn[4]=(x-1+Nx)%Nx;
      xn[5]=x;
      yn[0]=(y-1+Ny)%Ny;
      yn[1]=(y-1+Ny+x%2)%Ny;
      yn[2]=(y-1+Ny+x%2)%Ny;
      yn[3]=(y+x%2)%Ny;
      yn[4]=(y+x%2)%Ny;
      yn[5]=(y+1)%Ny;
      for(int s=0;s<Ns;s++){
	if(phi_0[x][y][s]){
	  if((double(rand())/double(RAND_MAX)<exp(-Pb[x][y])))
	    phi_t[xn[s]][yn[s]][s]=1;
	  else
	    phi_t[xn[s]][yn[s]][s]=0;
	}	 
      }          
    }
  for(int x=0;x<Nx;x++)
    for(int y=1;y<Ny-1;y++)
      for(int s=0;s<Ns;s++)
	phi_0[x][y][s]=phi_t[x][y][s];
}

void IniSP(int Cloud_Width){
  for(int ix=0;ix<Nx;ix++)
    for(int iy=0;iy<Ny;iy++){
      //double x=(ix+0.)/Nx,y=(iy+(ix%2)/2.)/Ny;
      //  Pb[ix][iy]=SP*exp(-50.*((x-0.5)*(x-0.5)+(y-0.5)*(y-0.5)));
      if((iy>300)&&(iy<=300+Cloud_Width))
      	Pb[ix][iy]=SP;///Cloud_Width;//0.004175585425064;
      else
	Pb[ix][iy]=0.;
    }
}

int main(int argc, char *argv[]){
  FILE *dskw1,*dskw2,*dskw3,*dskw4;
  State phi_0;
  int Mss[2][Nx];
  double Dts[Nx];
  char FileName[50];
  int err;
  for(int i=0;i<Nx;i++){
    Mss[0][i]=0;
    Mss[1][i]=0;
    Dts[i]=0.;
  }
  int Cloud_Width=atoi(argv[1]);
  srand (time(NULL));
  dskw2=fopen("./Data/DOAS/CelAut_disp.dat","w+");
  err=sprintf(FileName,"CelAut_v3.0_ave%04d.dat",Cloud_Width);
  err++;
  dskw4=fopen(FileName,"w+");
  Init(phi_0);
  IniSP(Cloud_Width);  
  for(int x=0;x<Nx;x++)
    for(int y=0;y<Ny;y++)
      if(Pb[x][y]>SP*0.9)
	fprintf(dskw2,"%d %f %f\n",x,y+(x%2)/2.,Pb[x][y]);
  fflush(dskw2);
  fclose(dskw2);
  for(int t=0;t<=3*Ny;t++){
    //printf("t=%d\n",t);
    if(t%2==0)
      for(int x=0;x<Nx;x+=2)
	phi_0[x][Ny-2][0]=1;
    //      phi_0[Nx/2][Ny-2][0]=1;
    if((t+1)%2==0)
      for(int x=1;x<Nx;x+=2)
	phi_0[x][Ny-2][0]=1;   
    /*    if(t%2==0)
	  phi_0[Nx/2][2][5]=1;  */
    err=sprintf(FileName,"./Data/DOAS/CelAut_v3.0_t%04d.dat",t);
    err++;
    dskw1=fopen(FileName,"w+");
    if(t>Ny)
      for(int x=0;x<Nx;x++){
	for(int y=0;y<Ny;y++){
	  int St=0;
	  for(int s=0;s<Ns;s++){
	    int St_par=phi_0[x][y][s];
	    St+=St_par*(1<<s);
	  }	
	  //if(St>0)fprintf(dskw1,"%d %f %f\n",x,y+(x%2)/2.,Pb[x][y]);
	  if(St>0)fprintf(dskw1,"%d %f\n",x,y+(x%2)/2.);
	  
	  //	for(int s=0;s<Ns;s++){
	 
	}
	Mss[0][x]+=phi_0[x][Ny-4][0];
	Mss[1][x]+=phi_0[x][2][0];	
	// fprintf(dskw2,"\n");
      }
    // fprintf(dskw2,"\n");
    fclose(dskw1);
    Evo(phi_0);
  }
  cout<<"Ok!"<<endl;
  double MeanMss=0.;
  int cnt=0;
  err=sprintf(FileName,"CelAut_v3.0_Mss%04d.dat",Cloud_Width);
  err++;
  dskw3=fopen(FileName,"w+");  
  for(int x=1;x<Nx-1;x++){
    fprintf(dskw3,"%d %d %d\n",x,Mss[0][x],Mss[1][x]);
    // cout<<-log((double)Mss[1][x]/((double)Mss[0][x]))<<endl;
    Dts[x]=(double)Mss[1][x]/((double)Mss[0][x]);
      //(double)Mss[1][x];//-log((double)Mss[1][x]/((double)Mss[0][x]));
    cnt++;
    MeanMss+=Dts[x];
  }
  fclose(dskw3);
  MeanMss/=cnt;
  double Variance=0.;
  for(int x=1;x<Nx-1;x++)
    Variance+=(MeanMss-Dts[x])*(MeanMss-Dts[x])/cnt;  
  fprintf(dskw4,"%d %g %g\n",Cloud_Width,MeanMss,Variance);
  cout<<"Cloud Width="<<Cloud_Width<<" MeanMss="<<MeanMss<<endl;
  fclose(dskw4);
  return 0;  
}

/*
g++ CelAut_v3.0.C -o CelAut_v3.0
time ./CelAut_v3.0 1
g++ plot.C -o plot
./plot
rm *.png
time gnuplot plot.plt 
rm *.mp4
avconv -i CelAut_v3.0_%04d.png long_cloud.mp4

*/
