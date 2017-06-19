val numbers = List(1,2,3,4,5)

// The '_' here represents the entire parameter list
// I would still think it represents just one parameter
// at a time "foreach" entry in the list?

//Apparentely when used like this it, yo're writing a partially applied function
numbers.foreach(println _)
numbers.foreach((x) => println(x))

def sum(a: Int, b: Int , c: Int) = a + b + c
//When doing this
sum(1, 2, 3) //: We are "applying" sum to the parameters(1,2 and 3)
//i.e. we call method "apply" on these parameters

// Partially applied function: an expression in which you supply SOME or NONE of the arguments
// to a function

//Applying sum to NONE of it's parameters
val partiallyAppliedSum = sum _

// 1. Instantiates a new Function (Function3) value that takes three integer parameters
// missing from the partially applied function expression (sum _)
partiallyAppliedSum(1, 2, 3)
//Applying sum to SOME of it's parameters
partiallyAppliedSum(1 ,_:Int, 2) //Results in a Function1

val f1 = partiallyAppliedSum(1 ,_:Int, 2) // Doesn't give you a sum, because it can't, it's missing an operand
//so instead gives you a Function1(A function value) which will give you the result
f1(1)

numbers.foreach(println) // Allowed in places expecting a function
