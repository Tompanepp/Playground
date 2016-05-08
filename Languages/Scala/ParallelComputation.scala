case class Person (name: String, age: Integer)

//NON PARALLEL VERSION

val People : Array[Person] = Array(Person("Triston", 12), Person("Lebo", 9), Person("KayB", 89)
                                  ,Person("Phn",79))
val (minors, adults) = People partition (_.age < 18)

println("Minors")
for(x <- minors)
  println(x.name + " " + x.age)

println("Adults")
for(x <- adults)
  println(x.name + " " + x.age)


//_ = the parameter: The Person object in this instance
//Take it's age
//Compare to 18
//Return the result True/False

//PARALLEL VERSION

println("Parallel Version")

val (minorparallel, adultsparallel) = People.par partition (_.age < 18)


println("Minors")
for(x <- minorparallel)
  println(x.name + " " + x.age)

println("Adults")
for(x <- adultsparallel)
  println(x.name + " " + x.age)
