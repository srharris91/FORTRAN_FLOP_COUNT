PROGRAM FLOPS
IMPLICIT NONE

! declaration
integer::i,j
integer::R=1
integer::N=1000
real,dimension(1000)::a,b,c,d
real::s,e,mflops

! assign values
a=0;b=1;c=2;d=3
R=1;N=1000

call CPU_TIME(s)
do i=1,N
    A(i)=B(i)+C(i)*D(i)
end do
if (A(2)<0) then !call dummy(a,b,c,d)
    A(i) = 1.25
    B(i) = 1.25
    C(i) = 1.25
    D(i) = 1.25
call CPU_TIME(e)
mflops=R*N*2/((e-s)*1.e6)
write(*,*) N,mflops



END PROGRAM FLOPS
