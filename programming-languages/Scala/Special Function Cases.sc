//1. Repeated argument

def echo (param: String*) = println(param)

echo("Hello", "Helllo", "Hellloo")

//This fails
val greeting = Array("Hello", "How", "Are", "You", "?")

//echo(greeting) : param is not an array, it a repeated parameter?
echo(greeting: _*) //Solves the problem, your saying greeting is a repeated parameter
//so it matches the expected type for echo
// It will then pass each individual element of the array


//2. Named arguments

def speed(distance: Int, time: Int) = distance/time
//positional arguments require the order to be correct
speed(100,10)

speed(time = 10, distance = 100) // named arguemnts can be passed in any order

//3. Default parameter
def printTime(out: java.io.PrintStream = Console.out) =
  out.println("Time = " + System.currentTimeMillis())

printTime()

printTime(Console.err)

def printTime2 (out: java.io.PrintStream = Console.out, divisor: Int = 1) =
  out.println("Time = " + System.currentTimeMillis()/divisor)

printTime2(divisor = 2)
printTime2(out = Console.err)