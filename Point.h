#include <iostream>
#pragma once
/**
 * @brief 
 * 
 */
struct Point
{
public:
    Point(int input_x, int input_y);
    friend std::ostream &operator<<(std::ostream &out, Point &point)
    {
        out << "X : " << point.x << " , Y : " << point.y << std::endl;
        return out;
    }
    ~Point();

private:
    int x;
    int y;
};