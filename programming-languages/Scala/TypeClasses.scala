//Objective: Type class to adds functionality to get the string representation of a given type
//a .toString equivalent

//A = the type you want to add the functionality to
trait Show[A] {
    def show[A](a: A): String
}

//Mine
object ShowInt {
    def showInt: Show[Int] =  
        new Show[Int] {
            def show[Int](a: Int): String = s"int $a" 
        }
}

println(ShowInt.showInt.show(1))
println("Apl")

//Theirs

object Show {
    val intCanShow: Show[Int] = 
        new Show[Int] {
            def show[Int](int: Int): String = s"int $int"
        }
}

//cumbersome usage
println(Show.intCanShow.show(1))