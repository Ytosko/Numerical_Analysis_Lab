#include<bits/stdc++.h>
using namespace std;
double x[20], y[20][20];
main()
{
    int n,a;
    cout<< "Enter the number of known function values : ";
        cin >> n;
    cout << "Enter the value of x and the corresponding function values : ";
    for(int i = 1; i<= n; i++)
    {
        cin >> x[i] >> y[i][1];
    }
    cout << "Enter the value for which function value is to be found : ";
    cin >> a;
    int k = 0;
    for(int j = 2; j<=n; j++)
    {
        k++;
        for(int i = 1; i<=n-k; i++)
        {
            y[i][j] = (y[i+1][j-1]-y[i][j-1])/(x[i+k]-x[i]);
        }
    }
    cout << "The divided difference table is : " << endl;
    for(int i = 1; i<=n; i++)
    {
        cout << fixed << setprecision(3) << x[i] << " " ;
        for(int j = 1; j <= n-i+1; j++)
        {
            cout << fixed << setprecision(3) << y[i][j] << " ";
        }
        cout << endl;
    }
    double s = y[1][1];
    for(int j = 2; j<=n; j++)
    {
        double p =1;
        for(int i = 1; i<= j-1; i++)
        {
            p *= (a-x[i]);
        }
        s += p*y[1][j];
    }
    cout << "The corresponding function value is : " << fixed << setprecision(3) << s << endl;
}

