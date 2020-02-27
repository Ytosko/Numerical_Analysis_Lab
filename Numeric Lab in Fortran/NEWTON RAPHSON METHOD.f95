PROGRAM nr
count=0
write(*,40)
40 format(1x,'To find a root of an equation using Newton Raphson',\)
write(*,50)
50 format(' Method.')
write(*,*)'Enter initial root and error value:'
read(*,*)x,e
10 IF(g(x).EQ.0)THEN
write(*,*)'Incorrect initial root.'
STOP
ENDIF
y=x-(f(x)/g(x))
IF(abs(f(y)).LT.e) GOTO 20
count=count+1
IF(count.GT.500)THEN
write(*,*)'An error has occured.'
STOP
ENDIF
x=y
GOTO 10
20 write(*,30)x
30 format(1x,'Approximate root= ',F10.3)
STOP
END
function f(x)
f=x*x-5*x+6
return
END
function g(x)
g=2*x-5
return
END
