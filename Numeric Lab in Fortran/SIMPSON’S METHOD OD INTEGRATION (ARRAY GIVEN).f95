PROGRAM zz
dimension x(20),y(20)
write(*,*)'To find the value of integral of a function using*Simpsons rule. '
write(*,*)
write(*,*)'Enter the limits of integration:'
read(*,*)a,b
write(*,*)'Enter the number of subintervals(an even no.) :'
read(*,*)n
h=(b-a)/n
x(1)=a
y(1)=f(x(1))
DO 10 i=2,n+1
x(i)=x(i-1)+h
y(i)=f(x(i))
10 continue
s=y(1)+y(n+1)
DO 20 i=2,n,2
s=s+4*y(i)
20 continue
DO 30 i=3,n-1,2
s=s+2*y(i)
30 continue
s=h*s/3
write(*,40)s
40 format(1x,'The value of the integral is: ',F10.4)
STOP
END
function f(x)
f=sin(x)
return
END
