#include<bits/stdc++.h>
using namespace std;
double x[50],y[50];
double f(double x, double y)
{
    return x+y;
}
main()
{
    double a,c,b,n,h;
    cout << "Enter the initial values : ";
    cin >> a >> c;
    cout << "Enter the value at which the function to be found : ";
    cin >> b;
    cout << "Enter the subinterval : ";
    cin >> n;
    x[1] = a;
    y[1] = c;
    h = (b-a)/n;
    cout << "The function values at each step is given below : " << endl;
    cout << "x Function value : " <<  endl;
    cout << fixed << setprecision(3) << x[1] << "\t" << y[1] << endl;
    for(int i = 1; i<=n; i++){
        x[i+1] = x[i]+h;
        y[i+1] = y[i] + h*f(x[i],y[i]);
        cout << fixed << setprecision(3) << x[i+1] << "\t" << y[i+1] << endl;
    }
}
