//Normal Funtors
import scala.concurrent.Future

val someFuture = Future(2)
someFuture.map(_ * 2)

println(a)



def cur(a: Int)(b: Int) = a + b

val a = cur(1)_

//problem
List(1,2,3) map cur
//does not return a single parameter function(from the partial application)
//it returns a value of type List[Int => Int], a function wrapped in Functor context
//List(b => 1 + b, b => 2 + b, b => 3 + b)

//Trying to continue the computation
val func = List(1,2,3) map cur