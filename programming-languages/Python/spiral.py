import turtle

def spiral(turtle, counter, upperBound, distance, angle):
    if counter == upperBound: return
    else:
        turtle.forward(distance)
        turtle.right(angle)
        spiral(turtle, counter + 1, upperBound, distance + 2 , angle)


def spiralSkewed(turtle, counter, upperBound, distance, angle):
    if counter == upperBound: return
    if counter % 4 == 0:  
        spiralSkewed(turtle, counter + 1, upperBound, distance + 2 , angle - 5)
    else:
        turtle.forward(distance)
        turtle.right(angle)
        spiralSkewed(turtle, counter + 1, upperBound, distance + 2 , angle - 5)

def main():
    wn = turtle.Screen()
    tess = turtle.Turtle()
    tess.color('blue')
    tess.left(180)
    
    #note: the horizontal and vertical distance between the sides is constant
    #length increase formula
    
    #angle increase formula
    distance = 5
    distanceIncreaseFactor = 2
    upperBound = 20
    
    spiral(tess, 0, upperBound, distance, 90)
    tess.penup()
    tess.goto(100 ,0)
    tess.pendown()
    #tess.left(180)
    spiralSkewed(tess, 1, upperBound, distance, 90)
    wn.exitonclick()

main()