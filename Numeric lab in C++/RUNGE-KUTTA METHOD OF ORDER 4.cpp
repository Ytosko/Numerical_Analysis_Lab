#include<bits/stdc++.h>
using namespace std;

double f(double x, double y)
{
    return x+y;
}
main()
{
    double x1,y1,x2,y2,a,n,h,s1,s2,s3,s4;
    cout << "Enter the initial values : ";
    cin >> x1 >> y1;
    cout << "Enter the value at which the function to be found : ";
    cin >> a;
    cout << "Enter the subinterval : ";
    cin >> n;
    h = (a-x1)/n;
    int c = 0;
    cout << "x \t y\n" << fixed << setprecision(3) << x1 << "\t" << y1 << endl;
   do
    {
        s1 = f(x1,y1);
        s2 = f(x1+h/2,y1+s1*h/2);
        s3 = f(x1+h/2,y1+s2*h/2);
        s4 = f(x1+h,y1+s3*h);
        y2 = y1+(s1+2*s2+2*s3+s4)*h/6;
        x2 = x1+h;
        cout << fixed << setprecision(3) << x2 << "\t" << y2 << endl;
        c++;
        if(c<n)
        {
            x1 = x2;
            y1 = y2;
        }
    } while(c<n);
    cout << fixed << setprecision(3) << "The value at " << x2 << " is " << y2 << endl;

}
