#include<bits/stdc++.h>
using namespace std;
double y;

double g(double x)
{
    return 3*pow(x,2.0)-1.0;
}
double f(double x)
{
    return pow(x,3.0)-x-11.0;
}

main()
{

    double a,e;
    cout << "Enter initial root and error value : ";
    cin >> a >> e;
    if(g(a) == 0)
        cout << "incorrect initial root!" << endl;

        int count = 0;
    while(1)
    {

        y = a - (f(a)/g(a));
        if(abs(f(y)) < e)
        {
            break;
        }
        count++;
        if(count >= 500)
        {
            cout << "An error has occurred!" << endl;
            return 0;
        }

        a = y;
    }

    cout << "The root is : " << a << endl;

}
