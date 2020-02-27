PROGRAM trp
integer count
count=1
write(*,30)
30 format(1x,'To find the value of the integral of a function ',\)
write(*,40)
40 format('using trapezoidal rule.')
write(*,*)
write(*,*)'Enter the limits of integration: '
read(*,*)a,b
IF(b.LT.a)THEN
c=a
a=b
b=c
ENDIF
write(*,*)'Enter the number of subintervals(an even no.) :'
read(*,*)n
h=(b-a)/n
x=a
y=f(x)
sum=y
10 IF(count.LT.n)THEN
x=x+h
y=f(x)
sum=sum+2*y
count=count+1
GOTO 10
ENDIF
x=x+h
y=f(x)
sum=sum+y
sum=h*sum/2
write(*,*)
write(*,20)sum
20 format(1x,'The value of the integral is :',F10.4)
STOP
END
function f(x)
f=1/(1+x*x)
return
END
