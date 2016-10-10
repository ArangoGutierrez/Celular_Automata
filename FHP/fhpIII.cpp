#include <cstdlib>
#include <iostream>
#include <fstream>

#define Nx 150
#define Ny 500
#define Ns 7

#define nl '\n'

using namespace std;

typedef bool Lstate [Ns];
typedef Lstate State [Nx][Ny];

void Init (State &n_0)
{
  for (int x = 0 ; x < Nx ; x++)
  {
    for (int y = 0 ; y < Ny ; y++)
    {
      for (int s = 0 ; s < Ns ; s++)
      {
	n_0[x][y][s] = 0;
      }
    }
  }
}

void Evo (State &n)
{
  State n_t;
  
  for (int x = 0 ; x < Nx ; x++)
  {
    for (int y = 0 ; y < Ny ; y++)
    {
      for (int s = 0 ; s < Ns ; s++)
      {
	n_t[x][y][s] = 0;
      }
    }
  }
  
  State D , T;
  
  for (int x = 0 ; x < Nx ; x++)
  {
    for (int y = 0 ; y < Ny ; y++)
    {
      for (int s = 0 ; s < Ns ; s++)
      {
	if (s < (Ns-4))
	{
	  D[x][y][s] = n[x][y][s]*n[x][y][(s+3)%6]*(1-n[x][y][(s+1)%6])*(1-n[x][y][(s+2)%6])*(1-n[x][y][(s+4)%6])*(1-n[x][y][(s+5)%6]);//*(1-n[x][y][6]);
	
	  D[x][y][s+3] = D[x][y][s];
	}
	
	if (s < (Ns-5) )
	{
	  T[x][y][s] = n[x][y][s]*n[x][y][(s+2)%6]*n[x][y][(s+4)%6]*(1-n[x][y][(s+1)%6])*(1-n[x][y][(s+3)%6])*(1-n[x][y][(s+5)%6]);//*(1-n[x][y][6]);
	  
	  T[x][y][s+2] = T[x][y][s+4] = T[x][y][s];
	}
      }
      
      T[x][y][6] = 0;
      D[x][y][6] = 0;
    }
  }
  
  for (int x = 1 ; x < Nx ; x++)
  {
    for (int y = 1 ; y < Ny ; y++)
    {
      int xn[Ns] , yn[Ns];
      
      xn[0] = x;
      xn[1] = x + 1;
      xn[2] = x + 1;
      xn[3] = x;
      xn[4] = x - 1;
      xn[5] = x - 1;
      xn[6] = x;
      
      yn[0] = y - 1;
      yn[1] = y - 1 + x%2;
      yn[2] = y + x%2;
      yn[3] = y + 1;
      yn[4] = y + x%2;
      yn[5] = y - 1 + x%2;
      yn[6] = y;
      
      int q;
      
      q = rand()%2;
      
      for (int s = 0 ; s < (Ns-1) ; s++)
      {
	n_t[xn[6]][yn[6]][6] = n[x][y][6];
	
	/* Bicolission between a moving particle and a resting particle. Rule #2 (start) */
	{
	if (n[x][y][6] == 1 && n[x][y][0] == 1 && n[x][y][1] == 0 && n[x][y][2] == 0 && n[x][y][3] == 0 && n[x][y][4] == 0 && n[x][y][5] == 0 && n[x-1][y][6] == 0 && n[x+1][y][6] == 0)// && n[x][y-1][6] == 0 && n[x][y+1][6] == 0)
	{
	  n[x][y][1] = 1;
	  n[x][y][5] = 1;
	  n[x][y][6] = 0;
	  n[x][y][0] = 0;
	}
	if (n[x][y][6] == 1 && n[x][y][1] == 1 && n[x][y][2] == 0 && n[x][y][3] == 0 && n[x][y][4] == 0 && n[x][y][5] == 0 && n[x][y][0] == 0 && n[x-1][y][6] == 0 && n[x+1][y][6] == 0)// && n[x][y-1][6] == 0 && n[x][y+1][6] == 0)
	{
	  n[x][y][0] = 1;
	  n[x][y][2] = 1;
	  n[x][y][6] = 0;
	  n[x][y][1] = 0;
	}
	if (n[x][y][6] == 1 && n[x][y][2] == 1 && n[x][y][3] == 0 && n[x][y][4] == 0 && n[x][y][5] == 0 && n[x][y][0] == 0 && n[x][y][1] == 0 && n[x-1][y][6] == 0 && n[x+1][y][6] == 0)// && n[x][y-1][6] == 0 && n[x][y+1][6] == 0)
	{
	  n[x][y][3] = 1;
	  n[x][y][1] = 1;
	  n[x][y][6] = 0;
	  n[x][y][2] = 0;
	}
	if (n[x][y][6] == 1 && n[x][y][3] == 1 && n[x][y][4] == 0 && n[x][y][5] == 0 && n[x][y][0] == 0 && n[x][y][1] == 0 && n[x][y][2] == 0 && n[x-1][y][6] == 0 && n[x+1][y][6] == 0)// && n[x][y-1][6] == 0 && n[x][y+1][6] == 0)
	{
	  n[x][y][2] = 1;
	  n[x][y][4] = 1;
	  n[x][y][6] = 0;
	  n[x][y][3] = 0;
	}
	if (n[x][y][6] == 1 && n[x][y][4] == 1 && n[x][y][5] == 0 && n[x][y][0] == 0 && n[x][y][1] == 0 && n[x][y][2] == 0 && n[x][y][3] == 0 && n[x-1][y][6] == 0 && n[x+1][y][6] == 0)// && n[x][y-1][6] == 0 && n[x][y+1][6] == 0)
	{
	  n[x][y][3] = 1;
	  n[x][y][5] = 1;
	  n[x][y][6] = 0;
	  n[x][y][4] = 0;
	}
	if (n[x][y][6] == 1 && n[x][y][5] == 1 && n[x][y][0] == 0 && n[x][y][1] == 0 && n[x][y][2] == 0 && n[x][y][3] == 0 && n[x][y][4] == 0 && n[x-1][y][6] == 0 && n[x+1][y][6] == 0)// && n[x][y-1][6] == 0 && n[x][y+1][6] == 0)
	{
	  n[x][y][4] = 1;
	  n[x][y][0] = 1;
	  n[x][y][6] = 0;
	  n[x][y][5] = 0;
	}
	}
	/* Bicolission between a moving particle and a resting particle. Rule # 2(end) */
	
	/* Tricolission between two moving particles and one resting particle. Rule # 6 (start) */
	{
	 if (n[x][y][6] == 1 && n[x][y][1] == 1 && n[x][y][5] == 1 && n[x][y][0] == 0 && n[x][y][2] == 0 && n[x][y][3] == 0 && n[x][y][4] == 0 && n[x-1][y][6] == 0 && n[x+1][y][6] == 0)
	 {
	   if(q == 0)
	   {
	     n[x][y][0] = 1;
	     n[x][y][2] = 1;
	     n[x][y][5] = 1;
	     n[x][y][6] = 0;
	     n[x][y][1] = 0;
	   }
	   else
	   {
	     n[x][y][0] = 1;
	     n[x][y][1] = 1;
	     n[x][y][4] = 1;
	     n[x][y][6] = 0;
	     n[x][y][5] = 0;
	   }
	 }
	
	 if (n[x][y][6] == 1 && n[x][y][2] == 1 && n[x][y][4] == 1 && n[x][y][3] == 0 && n[x][y][0] == 0 && n[x][y][1] == 0  && n[x][y][5] == 0 && n[x-1][y][6] == 0 && n[x+1][y][6] == 0)
	 {
	   if(q == 0)
	   {
	     n[x][y][1] = 1;
	     n[x][y][3] = 1;
	     n[x][y][4] = 1;
	     n[x][y][6] = 0;
	     n[x][y][2] = 0;
	   }
	   else
	   {
	     n[x][y][2] = 1;
	     n[x][y][3] = 1;
	     n[x][y][5] = 1;
	     n[x][y][6] = 0;
	     n[x][y][4] = 0;
	   }
	 }
	}
	/* Tricolission between two moving particles one resting particle. Rule # 6 (end) */
	
	/* Tricolission between three moving particles. Rule # 7 (start) */
	{
	 if (n[x][y][0] == 1 && n[x][y][3] == 1 && n[x][y][4] == 1 && n[x-1][y][6] == 0 && n[x+1][y][6] == 0)// && n[x][y][6] == 0 && n[x][y][(s+1)%6] == 0) && n[x][y][(s+2)%6] == 0 && n[x][y][(s+5)%6] == 0)
	  {
	    if (q == 0)
	    {
	      n[x][y][3] = 1;
	      n[x][y][5] = 1;
	      n[x][y][6] = 1;
	      n[x][y][4] = 0;
	      n[x][y][0] = 0;
	    }
	    else
	    {
	      n[x][y][2] = 1;
	      n[x][y][4] = 1;
	      n[x][y][5] = 1;
	      n[x][y][3] = 0;
	      n[x][y][0] = 0;
	    }  
	  }
	  if (n[x][y][2] == 1 && n[x][y][5] == 1 && n[x][y][0] == 1 && n[x-1][y][6] == 0 && n[x+1][y][6] == 0)// && n[x][y][6] == 0 && n[x][y][(s+1)%6] == 0) && n[x][y][(s+2)%6] == 0 && n[x][y][(s+5)%6] == 0)
	  {
	    if (q == 0)
	    {
	      n[x][y][5] = 1;
	      n[x][y][1] = 1;
	      n[x][y][6] = 1;
	      n[x][y][0] = 0;
	      n[x][y][2] = 0;
	    }
	    else
	    {
	      n[x][y][4] = 1;
	      n[x][y][0] = 1;
	      n[x][y][1] = 1;
	      n[x][y][5] = 0;
	      n[x][y][2] = 0;
	    }  
	  }
	  if (n[x][y][3] == 1 && n[x][y][0] == 1 && n[x][y][1] == 1 && n[x-1][y][6] == 0 && n[x+1][y][6] == 0)// && n[x][y][6] == 0 && n[x][y][(s+1)%6] == 0) && n[x][y][(s+2)%6] == 0 && n[x][y][(s+5)%6] == 0)
	  {
	    if (q == 0)
	    {
	      n[x][y][0] = 1;
	      n[x][y][2] = 1;
	      n[x][y][6] = 1;
	      n[x][y][1] = 0;
	      n[x][y][3] = 0;
	    }
	    else
	    {
	      n[x][y][5] = 1;
	      n[x][y][1] = 1;
	      n[x][y][2] = 1;
	      n[x][y][0] = 0;
	      n[x][y][3] = 0;
	    }  
	  }
	  if (n[x][y][5] == 1 && n[x][y][2] == 1 && n[x][y][3] == 1 && n[x-1][y][6] == 0 && n[x+1][y][6] == 0)// && n[x][y][6] == 0 && n[x][y][(s+1)%6] == 0) && n[x][y][(s+2)%6] == 0 && n[x][y][(s+5)%6] == 0)
	  {
	    if (q == 0)
	    {
	      n[x][y][2] = 1;
	      n[x][y][4] = 1;
	      n[x][y][6] = 1;
	      n[x][y][3] = 0;
	      n[x][y][5] = 0;
	    }
	    else
	    {
	      n[x][y][1] = 1;
	      n[x][y][3] = 1;
	      n[x][y][4] = 1;
	      n[x][y][2] = 0;
	      n[x][y][5] = 0;
	    }  
	  }
	  if (n[x][y][0] == 1 && n[x][y][3] == 1 && n[x][y][5] == 1 && n[x-1][y][6] == 0 && n[x+1][y][6] == 0)// && n[x][y][6] == 0 && n[x][y][(s+1)%6] == 0 && n[x][y][(s+2)%6] == 0 && n[x][y][(s+4)%6] == 0)
	  {
	    if (q == 0)
	    {
	      n[x][y][0] = 1;
	      n[x][y][4] = 1;
	      n[x][y][6] = 1;
	      n[x][y][3] = 0;
	      n[x][y][5] = 0;
	    }
	    else
	    {
	      n[x][y][1] = 1;
	      n[x][y][4] = 1;
	      n[x][y][5] = 1;
	      n[x][y][3] = 0;
	      n[x][y][0] = 0;
	    }  
	  }
	  if (n[x][y][1] == 1 && n[x][y][4] == 1 && n[x][y][0] == 1 && n[x-1][y][6] == 0 && n[x+1][y][6] == 0)// && n[x][y][6] == 0 && n[x][y][2] == 0 && n[x][y][3] == 0 && n[x][y][5] == 0)
	  {
	    if (q == 0)
	    {
	      n[x][y][1] = 1;
	      n[x][y][5] = 1;
	      n[x][y][6] = 1;
	      n[x][y][4] = 0;
	      n[x][y][0] = 0;
	    }
	    else
	    {
	      n[x][y][2] = 1;
	      n[x][y][5] = 1;
	      n[x][y][0] = 1;
	      n[x][y][4] = 0;
	      n[x][y][1] = 0;
	    }  
	  }
	  if (n[x][y][3] == 1 && n[x][y][0] == 1 && n[x][y][2] == 1 && n[x-1][y][6] == 0 && n[x+1][y][6] == 0)// && n[x][y][6] == 0 && n[x][y][(s+1)%6] == 0 && n[x][y][(s+2)%6] == 0 && n[x][y][(s+4)%6] == 0)
	  {
	    if (q == 0)
	    {
	      n[x][y][3] = 1;
	      n[x][y][1] = 1;
	      n[x][y][6] = 1;
	      n[x][y][0] = 0;
	      n[x][y][2] = 0;
	    }
	    else
	    {
	      n[x][y][4] = 1;
	      n[x][y][1] = 1;
	      n[x][y][2] = 1;
	      n[x][y][0] = 0;
	      n[x][y][3] = 0;
	    }  
	  }
	  if (n[x][y][4] == 1 && n[x][y][1] == 1 && n[x][y][3] == 1 && n[x-1][y][6] == 0 && n[x+1][y][6] == 0)// && n[x][y][6] == 0 && n[x][y][(s+1)%6] == 0 && n[x][y][(s+2)%6] == 0 && n[x][y][(s+4)%6] == 0)
	  {
	    if (q == 0)
	    {
	      n[x][y][4] = 1;
	      n[x][y][2] = 1;
	      n[x][y][6] = 1;
	      n[x][y][1] = 0;
	      n[x][y][3] = 0;
	    }
	    else
	    {
	      n[x][y][5] = 1;
	      n[x][y][2] = 1;
	      n[x][y][3] = 1;
	      n[x][y][1] = 0;
	      n[x][y][4] = 0;
	    }  
	  }
	}
	/* Tricolission between three moving particles. Rule # 7 (end) */
	
	/* Tetracolission between three moving particles and one rest particle. Rule # 9 (start) */
	/*{
	if (n[x][y][s] == 1 && n[x][y][(s+3)%6] == 1 && n[x][y][(s+4)%6] == 1 && n[x][y][6] == 1 && n[x][y][(s+1)%6] == 0 && n[x][y][(s+2)%6] == 0 && n[x][y][(s+5)%6] == 0)
	{
	  if (q == 0)
	  {
	    n[x][y][(s+2)%6] = 1;
	    n[x][y][(s+4)%6] = 1;
	    n[x][y][(s+5)%6] = 1;
	    n[x][y][6] = 1;
	    n[x][y][s] = 0;
	    n[x][y][(s+3)%6] = 0;
	  }
	  else
	  {
	    n[x][y][(s+1)%6] = 1;
	    n[x][y][(s+3)%6] = 1;
	    n[x][y][(s+4)%6] = 1;
	    n[x][y][(s+5)%6] = 1;
	    n[x][y][s] = 0;
	    n[x][y][6] = 0;
	  }  
	}
	if (n[x][y][s] == 1 && n[x][y][(s+3)%6] == 1 && n[x][y][(s+2)%6] == 1 && n[x][y][6] == 1 && n[x][y][(s+1)%6] == 0 && n[x][y][(s+4)%6] == 0 && n[x][y][(s+5)%6] == 0)
	{
	  if (q == 0)
	  {
	    n[x][y][(s+1)%6] = 1;
	    n[x][y][(s+2)%6] = 1;
	    n[x][y][(s+4)%6] = 1;
	    n[x][y][6] = 1;
	    n[x][y][s] = 0;
	    n[x][y][(s+3)%6] = 0;
	  }
	  else
	  {
	    n[x][y][(s+1)%6] = 1;
	    n[x][y][(s+2)%6] = 1;
	    n[x][y][(s+3)%6] = 1;
	    n[x][y][(s+5)%6] = 1;
	    n[x][y][s] = 0;
	    n[x][y][6] = 0;
	  }  
	}
	}*/
	/* Tetracolission between three moving particles and one rest particle. Rule # 9 (end) */
	
	/* Pentacolission between four moving particles and one rest particle. Rule # 14 (start) */
	/*{
	  if (n[x][y][s] == 1 && n[x][y][(s+2)%6] == 1 && n[x][y][(s+4)%6] == 1 && n[x][y][(s+5)%6] == 1 && n[x][y][6] == 1 && n[x][y][(s+1)%6] == 0 && n[x][y][(s+3)%6] == 0)
	  {
	    n[x][y][s] = 1;
	    n[x][y][(s+1)%6] = 1;
	    n[x][y][(s+3)%6] = 1;
	    n[x][y][(s+4)%6] = 1;
	    n[x][y][(s+5)%6] = 1;
	    n[x][y][(s+2)%6] = 0;
	    n[x][y][6] = 0;
	  }
	}*/
	/* Pentacolission between four moving particles and one rest particle. Rule # 14 (end) */
	
	/* Intermidiate horizontal walls. Chimney. (start) */
	{
	if(n[x-1][y][6]==1 && n[x][y][6] == 1 && n[x+1][y][6] == 1 && n[x][y][0] == 1 && n[x][y][1] == 0 && n[x][y][2] == 0 && n[x][y][3] == 0 && n[x][y][4] == 0 && n[x][y][5] == 0)
	{
	  n_t[xn[3]][yn[3]][3] = 1;
	  n_t[xn[0]][yn[0]][0] = 0;
	}
	if(n[x-1][y][6]==1 && n[x][y][6] == 1 && n[x+1][y][6] == 1 && n[x][y][1] == 1 && n[x][y][0] == 0 && n[x][y][2] == 0 && n[x][y][3] == 0 && n[x][y][4] == 0 && n[x][y][5] == 0)
	{
	  n_t[xn[2]][yn[2]][2] = 1;
	  n_t[xn[1]][yn[1]][1] = 0;
	}/*
	if(n[x-1][y][6]==1 && n[x][y][6] == 1 && n[x+1][y][6] == 1 && n[x][y][2] == 1 && n[x][y][0] == 0 && n[x][y][1] == 0 && n[x][y][3] == 0 && n[x][y][4] == 0 && n[x][y][5] == 0)
	{
	  n_t[xn[1]][yn[1]][1] = 1;
	  n_t[xn[2]][yn[2]][2] = 0;
	}
	if(n[x-1][y][6]==1 && n[x][y][6] == 1 && n[x+1][y][6] == 1 && n[x][y][3] == 1 && n[x][y][0] == 0 && n[x][y][1] == 0 && n[x][y][2] == 0 && n[x][y][4] == 0 && n[x][y][5] == 0)
	{
	  n_t[xn[0]][yn[0]][0] = 1;
	  n_t[xn[3]][yn[3]][3] = 0;
	}*/
	if(n[x-1][y][6]==1 && n[x][y][6] == 1 && n[x+1][y][6] == 1 && n[x][y][4] == 1 && n[x][y][0] == 0 && n[x][y][1] == 0 && n[x][y][2] == 0 && n[x][y][3] == 0 && n[x][y][5] == 0)
	{
	  n[x][y][5] = 1;
	  n[x][y][4] = 0;
	}/*
	if(n[x-1][y][6]==1 && n[x][y][6] == 1 && n[x+1][y][6] == 1 && n[x][y][5] == 1 && n[x][y][0] == 0 && n[x][y][1] == 0 && n[x][y][2] == 0 && n[x][y][3] == 0 && n[x][y][4] == 0)
	{
	  n[x][y][4] = 1;
	  n[x][y][5] = 0;
	}*/
	} 
	/* Intermidiate horizontal walls. Chimney. (end) */  
	
	/* Intermidiate vertical walls. Chimney. (start) */
	/*{
	if (n[x][y-1][6] == 1 && n[x][y][6] == 1 && n[x][y][0] == 1 && n[x][y][1] == 0 && n[x][y][2] == 0 && n[x][y][3] == 0 && n[x][y][4] == 0 && n[x][y][5] == 0)
	{
	  n[x][y][3] = 1;
	  n[x][y][0] = 0;
	}
	if (n[x][y-1][6] == 1 && n[x][y][6] == 1 && n[x][y+1][6] == 1 && n[x][y][1] == 1 && n[x][y][0] == 0 && n[x][y][2] == 0 && n[x][y][3] == 0 && n[x][y][4] == 0 && n[x][y][5] == 0)
	{
	  n[x][y][5] = 1;
	  n[x][y][1] = 0;
	} 
	if (n[x][y-1][6] == 1 && n[x][y][6] == 1 && n[x][y+1][6] == 1 && n[x][y][2] == 1 && n[x][y][0] == 0 && n[x][y][1] == 0 && n[x][y][3] == 0 && n[x][y][4] == 0 && n[x][y][5] == 0)
	{
	  n[x][y][4] = 1;
	  n[x][y][2] = 0;
	}
	if (n[x][y][6] == 1 && n[x][y+1][6] == 1 && n[x][y][3] == 1)// && n[x][y][0] == 0 && n[x][y][1] == 0 && n[x][y][2] == 0 && n[x][y][4] == 0 && n[x][y][5] == 0)
	{
	  n[x][y][0] = 1;
	  n[x][y][3] = 0;
	}
	if (n[x][y-1][6] == 1 && n[x][y][6] == 1 && n[x][y+1][6] == 1 && n[x][y][4] == 1 && n[x][y][0] == 0 && n[x][y][1] == 0 && n[x][y][2] == 0 && n[x][y][3] == 0 && n[x][y][5] == 0)
	{
	  n[x][y][2] = 1;
	  n[x][y][4] = 0;
	}
	if (n[x][y-1][6] == 1 && n[x][y][6] == 1 && n[x][y+1][6] == 1 && n[x][y][5] == 1 && n[x][y][0] == 0 && n[x][y][1] == 0 && n[x][y][2] == 0 && n[x][y][3] == 0 && n[x][y][4] == 0)
	{
	  n[x][y][1] = 1;
	  n[x][y][5] = 0;
	} 
	}*/
	/* Intermidiate vertical walls. Chimney. (end) */
	
	/* End walls. (start) */
	{
	/*
	if(n[x][1][0] == 1)   //In particle's time, Do you expect that the particle bounces toward back instantly or firstly it turns toward back and then it goes ahead?
	{
	  n[x][1][3] = 1;
	}
	if(n[x][1][1] == 1)
	{
	  n_t[xn[2]][1][2] = 1;
	}
	if(n[x][1][5] == 1)
	{
	  n_t[xn[4]][1][4] = 1;
	}
	if(n[x][Ny-1][3] == 1)
	{
	  n[x][Ny-1][0] = 1;
	}
	if(n[x][Ny-1][2] == 1)
	{
	  n_t[xn[1]][Ny-1][1] = 1;
	}
	if(n[x][Ny-1][4] == 1)
	{
	  n_t[xn[5]][Ny-1][5] = 1;
	}*/
	if(n[1][y][4] == 1)
	{
	  n[1][y][2] = 1;
	}
	if(n[1][y][5] == 1)
	{
	  n[1][y][1] = 1;
	}
	if(n[Nx-1][y][2] == 1)
	{
	  n[Nx-1][y][4] = 1;
	}
	if(n[Nx-1][y][1] == 1)
	{
	  n[Nx-1][y][5] = 1;
	}
	}
	/* End walls. (end) */
	
	/* FHP model. Rules # 1 , # 3 , # 4 , # 5 , # 8. (start) */
	
	  n_t[xn[s]][yn[s]][s] = n[x][y][s] + (q*D[x][y][(s+1)%6] + (1-q)*D[x][y][(s+5)%6] - D[x][y][s]) + (T[x][y][(s+3)%6] - T[x][y][s]);  
	  
	/* FHP model. Rules # 1 , # 3 , # 4 , # 5 , # 8. (end) */  
      }
    }
  }
  
  for (int x = 1 ; x < Nx ; x++)
  {
    for (int y = 1 ; y < Ny ; y++)
    {
      for (int s = 0 ; s < Ns ; s++)
      {
	n[x][y][s] = n_t[x][y][s];
      }
    }
  }
}
  
int main () 
{
  ofstream file;
  file.open ("proyectoX.dat");

    State n;
    
    srand (time(0));
    
    Init(n);
    
    for (int t = 0 ; t < 1000 ; t++)
    {
     if (t%10 == 0)
     {
       
       for (int x_part = 1 ; x_part < (Nx-1) ; x_part = x_part + 5)
       {
	  for (int s_part = 2 ; s_part < (Ns-2) ; s_part++)
	  {
	    n[x_part][Ny-1][0] = 1;
	  }
	}
       
       
// 	n[40][50][0] = 1;
// 	n[30][45][1] = 1;
// 	n[30][35][2] = 1;
// 	n[50][40][3] = 1;
// 	n[30][15][4] = 1;
// 	n[60][55][5] = 1;
     }
     
     /*
      if (t%10 == 0)
      {
        for (int x_part = 1 ; x_part < (Nx-1) ; x_part = x_part + 7)
        {
//  	 for (int s_part = 2 ; s_part < (Ns-2) ; s_part++)
//  	 {
	   n[x_part][Ny-1][0] = 1;
// 	 }  
	}
     }*/
      if (t == 0)
      {
	
	for (int x_wall = 20 ; x_wall <= 55 ; x_wall++)
	{
	  n[x_wall][120][6] = 1;
	  n[x_wall][350][6] = 1;
	  n[x_wall+35][250][6] = 1;
	  n[x_wall+35][80][6] = 1;
	  n[x_wall+75][200][6] = 1;
	  n[x_wall+75][400][6] = 1;
	}
	
	/*
	for (int x_wall = 45 ; x_wall < 65 ; x_wall++)
	{
	  n[x_wall][20][6] = 1;
	}
	for (int x_wall = 60 ; x_wall < Nx ; x_wall++)
	{
	  n[x_wall][20][6] = 1;
	}
	for (int y_wall = 20 ; y_wall < 40 ; y_wall++)
	{
	  n[20][y_wall][6] = 1;
	}
	for (int y_wall = 20 ; y_wall < 40 ; y_wall++)
	{
	  n[35][y_wall][6] = 1;
	}
	for (int y_wall = 20 ; y_wall < 40 ; y_wall++)
	{
	  n[45][y_wall][6] = 1;
	}
	for (int y_wall = 20 ; y_wall < 40 ; y_wall++)
	{
	  n[60][y_wall][6] = 1;
	}
	*/
	/*
	n[40][39][6] = 1;
	n[40][40][6] = 1;
	n[40][41][6] = 1;
	
	n[30][29][6] = 1;
	n[30][30][6] = 1;
	n[30][31][6] = 1;
	
	n[20][19][6] = 1;
	n[20][20][6] = 1;
	n[20][21][6] = 1;
	
	n[50][49][6] = 1;
	n[50][50][6] = 1;
	n[50][51][6] = 1;
	
	n[60][59][6] = 1;
	n[60][60][6] = 1;
	n[60][61][6] = 1;
	
	n[19][50][6] = 1;
	n[20][50][6] = 1;
	n[21][50][6] = 1;
	*/
      }
      
      for (int x = 0 ; x < Nx ; x++)
      {
	for (int y = 0 ; y < Ny ; y++)
	{
	  for (int s = 0 ; s < Ns ; s++)
	  {
	    int St = n[x][y][s];
	    
	    if(St > 0)
	    {
	      file << x << " " << y + (x%2)/2. << nl;
	      cout << x << " " << y + (x%2)/2. << nl;
	    }
	  }
	}
      }
      
      file << nl << nl;

      Evo(n);
    }
  
  file.close ();

  return 0;  
}

  
  
  
  
  
  
  
  
  
  
  
  
