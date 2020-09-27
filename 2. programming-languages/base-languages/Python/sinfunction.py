import math
import turtle

wn = turtle.Screen()
wn.bgcolor('lightblue')

fred = turtle.Turtle()
todd = turtle.Turtle()

def sin():
    #change range of values on the x and y coordinate system
    #for the turtle
    #default -200 to 200
    wn.setworldcoordinates(-50,-50,50, 50)
    degreesOfAcircle = 360
    #your code here
    #start at sin(0 degrees)
    #go to
    #(increment degrees by 1 ,sin(increment degrees by 1))

    for angleInDegrees in range(degreesOfAcircle + 1):
        #fred.goto(angleInDegrees,math.sin(math.radians(angleInDegrees)))
        fred.goto(angleInDegrees, math.sin(angleInDegrees))
        todd.goto(angleInDegrees, math.cos(angleInDegrees))


    #experimating with __name__
    print('__name__ in sinfunction: ', __name__)
    wn.exitonclick()
