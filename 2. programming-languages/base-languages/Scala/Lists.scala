val oneTwo = List(1,2)
val threeFour = List(2,3)
val oneTwoThreeFour = oneTwo ::: threeFour ///::: = Concatenate

println(oneTwo + " and " + threeFour + " were not mutated")
println("Thus " + oneTwoThreeFour + " is a new list")

//Lists are immutable
//Behave much like java String,  a new list is created when you make changes to an existing one

val twoThree = List(2,3)
val oneTwoThree = 1 :: twoThree //:: = Con {Prepends an element to the list}
                                //:: belongs to the list twoThree
println(oneTwoThree)

//Some rules on methods(operators)
//1. If a method is used in operator notation (1 * 2) it's executed as 1.*(2)
//2/ Except if the method ends with a colon (:) (1 :: list) it's executed as List.::(1)

val oneTwoThree = 1 :: 2 :: 3 :: Nil
val anotherTwoThree = 1 :: 2 :: 3 :: List()
//Intepreted as Nil.::(1,2,3)
//Nil = an empty list
