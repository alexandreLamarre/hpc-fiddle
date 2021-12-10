#include <iostream>
#include "Point.h"
#include "Square.h"

using namespace std;
int main()
{
    cout << "Hello world" << endl;
    Point *p1 = new Point(5, 5);
    cout << "Point1 : " << *p1;
    Point *p2 = new Point(7, 7);
    cout << "Point2 : " << *p2;
    Sq *s = new Sq(1, 2, 3, 4);
    cout << "Square : " << *s;
    return 0;
}
