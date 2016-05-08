
//Parametisation
//:When creating objects you can "configure" them with:
  //Types
  //Values
//ORDER: Type then value if both used

val greetStrings = new Array[String](3)

greetStrings(0) = "Hello"
greetStrings(1) = ", "
greetStrings(2) = "world!\n"

for (i <- 0 to 2)
  print(greetStrings(i))
//Type: String
//Value: 3

val greetStrings: Array[String] = new Array[String](3)
greetStrings(0) = "Hello"
greetStrings(1) = ", "
greetStrings(2) = "world!\n"
for (i <- 0 to 2) //to return sequence 0,1,2 that "for" iterates over
  print(greetStrings(i))


//Scala's apply and update methods
//NB: Everything in Scala is an object

val greetStrings = new Array[String](3)
greetStrings.update(0, "Hello")
greetStrings.update(1, ", ")
greetStrings.update(2, "world!\n")
for (i <- 0.to(2))
  print(greetStrings.apply(i))

//Shorter array
val greetStrings =  Array("Peter","Merry","Georgge")
val greetStrings =  Array.apply("Peter","Merry","Georgge")
