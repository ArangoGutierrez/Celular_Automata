#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>      
#include <iostream>

#define Nx 500
#define Ny 500
#define Ns 6
#define SP 0.01//0.0029511368691
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
	  if((double(rand())/double(RAND_MAX)<exp(-5.*Pb[x][y]/6.))
	     &&(phi_t[xn[s]][yn[s]][s]==0)){
	    phi_t[xn[s]][yn[s]][s]=1;
	    OccNei++;
	  }else{
	    //	    std::cout<<"Here we go!\n";
	    int Nc,Nc_1;
	    double AccRlp=0.,PNc;
	    for(int s_=0;s_<Ns;s_++)
	      if(phi_t[xn[s_]][yn[s_]][s_]==0)
		AccRlp+=Rayleigh[(s_+s)%6];
	    PNc=AccRlp*double(rand())/double(RAND_MAX);
	    //	    std::cout<<"Prob Total="<<AccRlp<<" PNc="<<PNc<<"\n";
	    AccRlp=0.;
	    Nc=0;
	    Nc_1=0;
	    while(AccRlp<PNc){	      
	      if(phi_t[xn[Nc_1]][yn[Nc_1]][Nc_1]==0){
		AccRlp+=Rayleigh[Nc];
		Nc++;
		//		std::cout<<".";
	      }
	      Nc_1++;
	      //	      std::cout<<"AccPro="<<AccRlp<<" Nc="<<Nc<<" Nc_1="<<Nc_1<<"\n";
	    }
	    Nc--;
	    //	    std::cout<<"\n";
	    //	    std::cout<<" Nc="<<Nc<<"\n";
	    //	    std::cout<<"s="<<s<<" OccNei="<<OccNei<<" Nc="<<Nc<<"\n";
	    Nc_1=0;
	    int s_=0;
	    while(phi_t[xn[(s_+s)%6]][yn[(s_+s)%6]][(s_+s)%6]==1)
	      s_++;
	    //	    std::cout<<"s_="<<s_<<" Nc_1="<<Nc_1<<"\n";
	    while(Nc_1<=Nc){
	      if(Nc_1==Nc){
		//		std::cout<<"Nc and Nc_1 are the same! "<<Nc<<" and s_="
		//			 <<s_<<"\n";
		phi_t[xn[(s_+s)%6]][yn[(s_+s)%6]][(s_+s)%6]=1;
		Nc_1=Nc+1;
		OccNei++;
	      }else{
		while(phi_t[xn[(s_+s)%6]][yn[(s_+s)%6]][(s_+s)%6]==1)
		  s_++;
		Nc_1++;
		s_++;
	      }
	    }	 
	  }
	}
      }
    }
  for(int x=0;x<Nx;x++)
    for(int y=1;y<Ny-1;y++)
      for(int s=0;s<Ns;s++)
	phi_0[x][y][s]=phi_t[x][y][s];
}

void IniSP(){
  for(int ix=0;ix<Nx;ix++)
    for(int iy=0;iy<Ny;iy++){
      //     double x=(ix+0.)/Nx,y=(iy+(ix%2)/2.)/Ny;
      //      Pb[ix][iy]=SP*exp(-50.*((x-0.5)*(x-0.5)+(y-0.5)*(y-0.5)));
      if((iy>300)&&(iy<=350))
	Pb[ix][iy]=SP;//0.004175585425064;
      else
	Pb[ix][iy]=0.;
    }
}

int main(){
  FILE *dskw1,*dskw2,*dskw3;
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
  srand (time(NULL));
  dskw2=fopen("./Data/DOAS/CelAut_disp.dat","w+");
  dskw3=fopen("./Data/DOAS/CelAut_Mss.dat","w+");
  Init(phi_0);
  IniSP();  
  for(int t=0;t<=3*Ny;t++){
    printf("t=%d\n",t);
    if(t%2==0)
      for(int x=0;x<Nx;x+=2)
	      phi_0[x][Ny-2][0]=1;
    //      phi_0[Nx/2][Ny-2][0]=1;
    if((t+1)%2==0)
      for(int x=1;x<Nx;x+=2)
	phi_0[x][Ny-2][0]=1;   
    /*    if(t%2==0)
	  phi_0[Nx/2][2][5]=1;  */
    err=sprintf(FileName,"./Data/DOAS/CelAut_v1.0_t%04d.dat",t);
    err++;
    dskw1=fopen(FileName,"w+");
    for(int x=0;x<Nx;x++){
      for(int y=0;y<Ny;y++){
	int St=0;
	for(int s=0;s<Ns;s++){
	  int St_par=phi_0[x][y][s];
	  St+=St_par*pow(2,s);
	}	
	//	if(St>0)fprintf(dskw,"%d %f %f\n",x,y+(x%2)/2.,1,Pb[x][y]);
	if(St>0)fprintf(dskw1,"%d %f\n",x,y+(x%2)/2.);
	fprintf(dskw2,"%d %f %f\n",x,y+(x%2)/2.,4.*Pb[x][y]);
      }
      Mss[0][x]+=phi_0[x][Ny-4][0];
      for(int s=0;s<Ns;s++){	
	Mss[1][x]+=phi_0[x][1][s];	
      }
      fprintf(dskw2,"\n");
    }
    fprintf(dskw2,"\n");
    fclose(dskw1);
    Evo(phi_0);
  }
  double MeanMss=0.;
  int cnt=0;
  for(int x=1;x<Nx-1;x++){
    fprintf(dskw3,"%d %d %d\n",x,Mss[0][x],Mss[1][x]);
    cout<<-log((double)Mss[1][x]/((double)Mss[0][x]))<<endl;
    Dts[x]=-log((double)Mss[1][x]/((double)Mss[0][x]));
    cnt++;
    MeanMss+=Dts[x];
  }
  MeanMss/=cnt;
  cout<<"MeanMss="<<MeanMss<<endl;
  return 0;  
}

/*
g++ CelAut_v1.0.C -o CelAut
rm CelAut_v1.0_t*.dat
time ./CelAut 
g++ plot.C -o plot
./plot
rm *.png
time gnuplot plot.plt 
rm sun_light.mp4
avconv -i CelAut_v1.0_%04d.png long_cloud.mp4

*/
