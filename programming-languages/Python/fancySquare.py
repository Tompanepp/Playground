#Sprites on the corners

import turtle

def drawSprite(turtle, legs, legLength):
    angle = 360/legs
    for leg in range(legs):
        turtle.forward(legLength)
        stampTriangle(turtle)
        turtle.penup()
        turtle.backward(legLength)
        turtle.left(angle)
        turtle.pendown()

def stampTriangle(turtle):
    turtle.shape('triangle')
    turtle.stamp()
    
def fancySquare(turtle):
    for s in range(4):
        turtle.forward(100)
        turtle.left(90)
        drawSprite(turtle, 8, 20)
        
def main():
    wn = turtle.Screen()
    tess = turtle.Turtle()
    fancySquare(tess)
    
    wn.exitonclick()
    
main()
