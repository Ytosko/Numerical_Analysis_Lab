PROGRAM ll
dimension x(20),y(20)
write(*,50)
50 format(1x,'To find the function value for a particular value ',\)
write(*,60)
60 format('of x using Lagrange interpolation formula.')
write(*,*)
write(*,*)'Enter the number of known function values:'
read(*,*)n
write(*,*)'Enter value of x and corresponding function values:'
DO 10 i=1,n
read(*,*)x(i),y(i)
10 continue
write(*,*)'Enter x for which function value is to be found:'
read(*,*)a
s=0
DO 20 i=1,n
p=1
DO 30 j=1,n
IF(i.NE.j) p=p*(a-x(j))/(x(i)-x(j))
30 continue
s=s+p*y(i)
20 continue
write(*,*)
write(*,40)a,s
40 format(1x,'The function value at x =',F7.2,' is:',F9.3)
STOP
END
