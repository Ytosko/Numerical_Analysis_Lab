PROGRAM bs
write(*,40)
40 format(1x,'To find a real root of an equation using Bisection',\)
write(*,50)
50 format(' method.')
write(*,*)
write(*,*)'Enter numbers between which the root is to be found:'
read(*,*)a,b
IF((f(a).GT.0).AND.(f(b).LT.0))THEN
w=a
a=b
b=w
ENDIF
write(*,*)'Input error value:'
read(*,*)e
20 c=(a+b)/2
IF(abs(f(c)).LT.e) GOTO 30
IF(f(c).LT.0)THEN
a=c
ELSE
b=c
ENDIF
GOTO 20
30 write(*,10)c
10 format(1x,'The approximate root of the function is:',F8.3)
STOP
END
function f(c)
f=c*c*c*c*c*c-c-1
return
END
