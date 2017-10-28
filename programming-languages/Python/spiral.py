import turtle

 #note: the horizontal and vertical distance between the sides is constant
 #hence (distance + 2)
def spiral(turtle, counter, sides, distance, angle):
    if counter == sides: return
    else:
        turtle.forward(distance)
        turtle.right(angle)
        spiral(turtle, counter + 1, sides, distance + 2 , angle)

def main():
    wn = turtle.Screen()
    tess = turtle.Turtle()
    tess.color('blue')
    tess.right(90)
    tess.forward(1)

    distance = 1
    sides = 50
    
    spiral(tess, 0, sides, distance, 90)

    tess.penup()
    tess.goto(sides * 3 ,0)
    tess.pendown()
    tess.left(180)
    spiral(tess, 0, sides, distance, 91)
    #spiralSkewed(tess, 1, upperBound, distance, 90)
    wn.exitonclick()

main()
