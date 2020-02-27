#include<bits/stdc++.h>
using namespace std;
double f(double x)
{
    return 1 / x;
}
int main()
{
    int n, i;
    double a, b, h, sum = 0, integral;
    cout << "Upper limit,a=";
    cin >> a;
    cout << "Lower limit, b=";
    cin >> b;
    cout << "Enter the no. of subintervals, n=";
    cin >> n;
    double x[n + 1], y[n + 1];
    h = (a - b) / n;
    for (i = 0; i <= n; i++)
    {
        x[i] = b+i*h;
        y[i] = f(x[i]);
    }
    for (i = 1; i < n; i++)
    {
        sum = sum + 2*y[i];
    }
    integral = h / 2.0 * ((y[0] + y[n]) + sum);
    cout << endl << "The definite integral  is:" << integral << endl;
    return 0;
}
