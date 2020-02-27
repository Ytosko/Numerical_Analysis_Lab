PROGRAM eu
dimension x(50),y(50)
write(*,*)'To solve a differential equation using Euler method.'
write(*,*)'Enter initial values:'
read(*,*)a,c
write(*,*)'Enter value at which result is to be found:'
read(*,*)b
write(*,*)'Enter the number of subintervals required:'
read(*,*)n
x(1)=a
y(1)=c
h=(b-a)/n
write(*,*)'The function values at each step is given below.'
write(*,*)
write(*,*)' x Function value'
write(*,10)x(1),y(1)
10 format(1x,F10.4,5x,F10.4)
DO 20 i=1,n
x(i+1)=x(i)+h
y(i+1)=y(i)+h*f(x(i),y(i))
write(*,10)x(i+1),y(i+1)
20 continue
STOP
END
function f(x,y)
f=x+y
return
END
