PROGRAM zz
count = 1
write(*,30)
30 format(1x,'To find the value of integral of a function using')
write(*,40)
40 format(' Simpsons rule. ')
write(*,*)
write(*,*)'Enter the limits of integration:'
read(*,*)a,b
write(*,*)'Enter the number of subintervals(an even no.) :'
read(*,*)n
h=(b-a)/n
x=a
y=f(x)
sum=y
10 IF(count.LT.n)THEN
x=x+h
y=f(x)
count=count+1
IF(mod(count,2).EQ.0)THEN
sum=sum+4*y
ELSE
sum=sum+2*y
ENDIF
GOTO 10
ENDIF
x=x+h
y=f(x)
sum=sum+y
sum=h*sum/3
write(*,20)sum
20 format(1x,'The value of the integral is: ',F10.4)
STOP
END
function f(x)
f=1/(1+x*x)
return
END
