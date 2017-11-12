import turtle
import random

def isInScreen(wn, t):
    leftBound = -(wn.window_width() / 2)
    rightBound = wn.window_width() / 2
    topBound = wn.window_height() /2
    bottomBound = -(wn.window_height() / 2)

    tXCordinate = t.xcor()
    tYCordinate = t.ycor()

    if tXCordinate > rightBound or tXCordinate < leftBound:
        return False
    elif tYCordinate > topBound or tYCordinate < bottomBound:
        return False
    else: return True

def main():
    jess = turtle.Turtle()
    jess.shape('turtle')
    wn = turtle.Screen()

    while(isInScreen(wn, jess)):
        coinSide = random.randrange(0,2)
        if coinSide == 0:
            jess.left(90)
        else:
            jess.right(90)
        jess.forward(50)

    wn.exitonclick()
main()