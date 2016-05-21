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

val numbers = List(1,2,3,4,5)
numbers.foreach(println _)
numbers.foreach((x) => println(x))