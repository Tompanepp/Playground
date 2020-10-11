#include "point.h"

struct point {
    int x;
    int y;
};

struct point makePoint(int x, int y) {
    struct point temp;
    temp.x = x;
    temp.y = y;
    return temp;
}

struct point addPoint(struct point *pt1, struct point *pt2) {
    pt1->x += pt2->x;
    pt2->y += pt2->y;
}