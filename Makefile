CC = g++
CCFLAGS  =  -O -Wall -ftemplate-depth-150
 
IDFLAGS     = -I. -I/home/arturo/Work/ula/include -I/home/arturo/Work/ula/include/ula -I/usr/local/include 
LIBS_LAPACK = -lgfortran -lm -llapack -lblas #-lfftw3
LIBS_OPENMP = -fopenmp
.C:
	$(CC) $(CCFLAGS) $@.C -o $@ $(LDFLAGS) $(IDFLAGS) $(LIBS_LAPACK) $(LIBS_OPENMP)

clean:
	\rm *~ 
