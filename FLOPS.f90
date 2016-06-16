PROGRAM FLOPS
IMPLICIT NONE

real(wp),dimension(N)::a,b,c,d
real(wp)::s,e,mflops

a=0;b=1;c=2;d=3

call get_walltime(s)
do j=1,R
    do i=1,N
        A(i)=B(i)+C(i)*D(i)
    end do
    if (A(2)<0) call dummy(a,b,c,d)
end do

call get_walltime(e)

mflops=R*N*2/((e-s)*1.e6_wp)

END PROGRAM FLOPS
