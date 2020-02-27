#include<bits/stdc++.h>
using namespace std;
double x[20],y[20];
main()
{
    double n,a,s;
    cout << "Enter the value of the number of known function : ";
    cin >> n;
    cout << "Enter x with corresponding function : ";
    for(int i = 1; i <= n; i++)
    {
        cin >> x[i] >> y[i];
    }
    cout << "Enter the value for which the function to be found : ";
    cin >> a;
    s=0;
    for(int i = 1; i<=n; i++)
    {
        double p = 1;
        for(int j = 1; j<=n; j++)
        {
            if(i != j){
                 p *= (a-x[j])/(x[i]-x[j]);
            }
        }
        s += p*y[i];
    }
    cout << fixed << setprecision(3) << "Function value at " << a << " is " << s << endl;
}
