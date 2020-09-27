'''
    square area = 4 (2 * 2)
    ratio of 
        area of circle = pi * r^2
            to
        area of square = s * s = 2r * 2r
            is
            pi/4

    Proof:
        pi * r^2 / s * s 
        pi * r^2 / 2r * 2r
        pi * r^2 / 4r
        Sub value of r = 1
        pi * 1^2 / 4 * 1
        pi/4        

(number of darts on dartboard(circle)) /(total number thrown) is described by the ratio above

    (number of darts on dartboard(circle)) /(total number thrown) = pi/4
    4 * (number of darts on dartboard(circle)) /(total number thrown) = (pi/4) * 4 
    4 * (number of darts on dartboard(circle)) /(total number thrown) = pi
'''

import turtle
import math
import random

fred = turtle.Turtle()

wn = turtle.Screen()
wn.setworldcoordinates(-1,-1,1,1)
wn.tracer(100)

fred.up()
fred.shape('circle')
dartboardRadius = 1
onTargetDarts = 0
squareArea = 4

totalDarts = 10000 
for i in range(totalDarts):
    #why not use random.randrang(-1,2)?
    x = random.randrange(-1,2)
    y = random.randrange(-1,2)

    #convert to range number in range -1 to 1
    #x = randx * 1
    #y = randy * 1

    #goto x,y
    fred.goto(x,y)
    
    if fred.distance(0,0) <= dartboardRadius:
        fred.color('red')
        onTargetDarts = onTargetDarts + 1
    else:
        fred.color('blue')

    fred.stamp()
    #stamp
print(f'on t: {onTargetDarts}')
print(f'total: {totalDarts}')
pi = (onTargetDarts/totalDarts) * squareArea
print(f'appproximation of pi: {pi}')
wn.exitonclick()
