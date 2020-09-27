import turtle
wn = turtle.Screen()
jose = turtle.Turtle()
jose.shape("turtle")
jose.up()

for size in range(10):
    jose.forward(50)
    jose.stamp()
    jose.forward(-50)
    jose.right(36)

jose.forward(50)
jose.color("red")

tessa = turtle.Turtle()
tessa.shape("turtle")
for size in range(10):
    tessa.stamp()
    tessa.forward(50)
    tessa.right(36)
    tessa.forward(-50)

tessa.forward(50)
tessa.color("red")


wn.exitonclick()