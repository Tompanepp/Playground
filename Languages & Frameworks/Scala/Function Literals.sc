(x: Int) => x + 1

val someNumebrs = List(1,2,3)

//Short hand :)
someNumebrs.foreach((x) => x + 1)

//Even shorter short hand :) :)

//Placeholder syntax

someNumebrs.filter(x => x > 0)

someNumebrs.filter(_ > 0)

 //val f = _ + _
val f0 = (_ : Int) + (_ : Int)
f0(1,1)


// A function literal is compiled into a class that when instantiated at runtime
// is a function value
// -> Every function is an instance of FunctionN trait and has an apply method
// N is the number of arguments
