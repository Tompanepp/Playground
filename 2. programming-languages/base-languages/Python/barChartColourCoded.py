#not my work, made some minor improvements
#ref: http://interactivepython.org/runestone/static/thinkcspy/Functions/ATurtleBarChart.html#bar-chart
import turtle

def drawBar(t, height):
    """ Get turtle t to draw one bar, of height. """
    #decide colour
    #set colour
    t.fillcolor(determineColour(height))
    if height < 0:
        t.write(str(height))
    t.begin_fill()               # start filling this shape
    t.left(90)
    t.forward(height)
    moveVertically(t, 1)
    if height >= 0:
        t.write(str(height))
    moveVertically(t, -1)
    t.right(90)
    t.forward(40)
    t.right(90)
    t.forward(height)
    t.left(90)
    t.end_fill()                 # stop filling this shape    

def determineColour(height):
    if height >= 200: return 'red'
    elif height >= 100: return 'yellow'
    else: return 'green'

def moveVertically(t, distance):
    t.penup()
    t.forward(distance)
    t.pendown()

def main():
    xs = [0, 117, 200, 240, 160, 260, 220]  # here is the data
    maxheight = max(xs)
    numbars = len(xs)
    border = 10

    wn = turtle.Screen()             # Set up the window and its attributes
    wn.setworldcoordinates(0-border, 0-border, 40*numbars+border, maxheight+border)
    wn.bgcolor("lightgreen")

    tess = turtle.Turtle()           # create tess and set some attributes
    tess.color("blue")
    tess.fillcolor("red")
    tess.pensize(3)

    for a in xs:
        drawBar(tess, a)

    wn.exitonclick()

main()