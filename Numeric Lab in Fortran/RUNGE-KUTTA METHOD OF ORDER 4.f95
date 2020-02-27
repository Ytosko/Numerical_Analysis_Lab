PROGRAM rrkk
integer count
count=0
write(*,10)
10 format(1x,'To solve a differential equation using fourth ',\)
write(*,20)
20 format('order Runge Kutta method.')
write(*,*)
write(*,*)'Enter the initial values:'
read(*,*)x1,y1
write(*,*)'Enter value at which function value is to be found:'
read(*,*)a
write(*,*)'Enter the number of subintervals:'
read(*,*)n
h=(a-x1)/n
write(*,*)'The function values are as follows: '
write(*,*)
write(*,30)
30 format(8x,' x ',5x,' f(x) ')
write(*,40)x1,y1
40 format(1x,F10.4,F10.4)
50 s1=f(x1,y1)
s2=f(x1+h/2,y1+s1*h/2)
s3=f(x1+h/2,y1+s2*h/2)
s4=f(x1+h,y1+s3*h)
y2=y1+(s1+2*s2+2*s3+s4)*h/6
x2=x1+h
write(*,40)x2,y2
count=count+1
IF(count.LT.n)THEN
x1=x2
y1=y2
GOTO 50
ENDIF
write(*,*)
write(*,60)x2,y2
60 format(1x,'The value at ',F10.4,' is :',F10.4)
STOP
END
function f(x,y)
f=x+y
return
END
