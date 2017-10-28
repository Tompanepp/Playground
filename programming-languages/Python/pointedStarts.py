import turtle

def drawPointedStar(turtle):
    for n in range(5):
        turtle.forward(100)
        turtle.left(216)

        
def main():
    tess = turtle.Turtle()
    tess.penup()
    tess.backward(150)
    tess.pendown()
    for n in range(5):
        drawPointedStar(tess)
        moveToNextPosition(tess)


def moveToNextPosition(turtle):
    turtle.penup()
    turtle.forward(350)
    turtle.right(144)
    turtle.pendown()
    
main()
    
