code = Project3
compiler = gfortran
flags=-cpp -Wall -Wextra -Wconversion -O3
EXEC = FLOPS.exec
OBJS = FLOPS.o

all: exec run plot

exec: $(OBJS)
	@echo ''
	@echo 'Linking $(EXEC) from $(OBJS)'
	@echo ''
	@$(compiler) $(flags) $(OBJS) -o $(output)$(EXEC)

run:
	./$(code).exec

plot:
	python *.py

clean:
	rm -f *.exec *.txt *.pdf *.mod *.o




.SUFFIXES:
.SUFFIXES: .f90 .o
.f90.o:
	@echo 'Compiling [$@] from [$<] using $(compiler) $(flags)'
	@$(compiler) $(flags) $*.f90 -c -o $*.o
