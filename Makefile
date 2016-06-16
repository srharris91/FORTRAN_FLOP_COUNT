code = Project3
#module = Project2_mod.f90
compiler = gfortran
# flags=-Wall -Wextra -Wconversion -std=c++11 -O3 -o
# flags=-cpp -Wall -Wextra -Wconversion -J./output/ -fopenmp -O3 -fdefault-real-8 -o
# flags=-cpp -Wall -Wextra -Wconversion -J./output/ -O3 -fopenmp -fdefault-real-8
flags=-cpp -Wall -Wextra -Wconversion -J./output/ -O3 -fdefault-real-8
output = output/
EXEC = Project3.exec
OBJS = FLOPS.o

all: exec run plot

dir:
	@echo ''
	@mkdir -p output
	@echo ''
exec: $(OBJS)
	@echo ''
	@echo 'Linking $(output)$(EXEC) from $(OBJS)'
	@echo ''
	@$(compiler) $(flags) $(OBJS) -o $(output)$(EXEC)

run:
	./$(output)$(code).exec

plot:
	python *.py

clean:
	rm -f *.exec *.txt *.pdf *.mod *.o




.SUFFIXES:
.SUFFIXES: .f90 .o
.f90.o:
	@echo 'Compiling [$@] from [$<] using $(compiler) $(flags)'
	@$(compiler) $(flags) $*.f90 -c -o $*.o
