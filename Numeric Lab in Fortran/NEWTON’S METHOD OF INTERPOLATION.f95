PROGRAM newt
dimension x(20),y(20,20)
write(*,100)
100 format(1x,'To find the value of a function corresponding to a',\)
write(*,110)
110 format(' value of x using Newtons divided difference method.')
write(*,*)
write(*,*)'Enter the number of known function values:'
read(*,*)n
write(*,*)'Enter the values of x and the corresponding function values:'
DO 10 i=1,n
read(*,*)x(i),y(i,1)
10 continue
write(*,*)'Enter the value of x for which function value is to be found:'
read(*,*)a
k=0
DO 20 j=2,n
k=k+1
DO 30 i=1,n-k
y(i,j)=(y(i+1,j-1)-y(i,j-1))/(x(i+k)-x(i))
30 continue
20 continue
write(*,*)'The divided difference table is : '
write(*,*)
DO 70 i=1,n
write(*,90)x(i)
DO 80 j=1,n-i+1
write(*,90)y(i,j)
90 format(1x,F10.3\)
80 continue
write(*,*)
write(*,*)
70 continue
s=y(1,1)
DO 40 j=2,n
p=1
DO 50 i=1,j-1
p=p*(a-x(i))
50 continue
s=s+p*y(1,j)
40 continue
write(*,60)s
60 format(1x,'The corresponding function value is:',F10.3)
STOP
END
