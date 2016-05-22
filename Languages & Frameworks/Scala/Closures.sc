val a = (x: Int) => x + 1

a(1)

(x: Int) => x + more//Fails, what is more?

var more = 1

//When Scala closes this it close with a reference to the external variaable
//thus sees it when it changes
val addMore = (x: Int) => x + more

addMore(1)

//more changd, thus the definition of addMore changed
more = 4

addMore(1)

// ATTEMPT TO HAVE A CLOSURE ON AN EXTERNAL PARTIAL FUNCTION
def sum(a: Int, b:Int, c:Int) = a + b + c

var more2 = sum(_:Int, 1, 1)

//val addMore2 = (x: Int) => x + more2

// ATTEMPT TO HAVE A CLOSURE ON AN EXTERNAL PARTIAL FUNCTION

