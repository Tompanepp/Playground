#include "point.h"

struct rectangle {
        /* TODO Why do I need to use a pointer??
             struct point bottomLeft; does not work
        */
    struct point *bottomLeft;
    struct point *topRight;
};