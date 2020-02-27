#include<bits/stdc++.h>
using namespace std;
double c;
double f(double x)
{
    return x*x*x+3*x-5;

}

void bisec(double a, double b, double e)
{
    while(1){
        c = (a*f(b)-b*f(a))/(f(b)-f(a));
        if(abs(f(c))<e){
            break;
        }
        else if(f(c) < 0)
            a = c;
        else
            b = c;
    }
}


main()
{
    double a,b,e;

    cout << "Enter the value between which the root exists : ";
    cin >> a >> b;
     if(f(a) > 0 && f(b) < 0){

        swap(a,b);
    }
    cout << "enter error value : ";
    cin >> e;
    bisec(a,b,e);
    cout << "the approximate root is : " << fixed << setprecision(4) << c;
}

