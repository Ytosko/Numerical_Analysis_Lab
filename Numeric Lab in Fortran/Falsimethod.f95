PROGRAM regfal
write(*,40)
40 format(1x,'To find the approximate root of a function using ')
write(*,50)
50 format('Method of False Position.')
write(*,*)'Enter the numbers between which root is to be found:'
read(*,*)a,b
IF((f(a).GT.0).AND.(f(b).LT.0))THEN
w=a
a=b
b=w
ENDIF
write(*,*)'Input error value:'
read(*,*)e
20 c=(a*f(b)-b*f(a))/(f(b)-f(a))
IF(abs(f(c)).LT.e) GOTO 10
IF(f(c).LT.0)THEN
a=c
ELSE
b=c
ENDIF
GOTO 20
10 write(*,30)c
30 format(1x,'The approximate root of the function is:',F8.3)
STOP
END
function f(c)
f=c*c*c-9*c+1
return
END

