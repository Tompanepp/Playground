#ifndef POINT_H
#define POINT_H

struct point;
struct point makePoint(int x, int y);
struct point addPoint(struct point *pt1, struct point *pt2);

#endif