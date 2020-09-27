//Objective: Type class to adds functionality to get the string representation of a given type
//a .toString equivalent

//A = the type you want to add the functionality to
trait Show[A] {
    def show[A](a: A): String
}

//Mine
object ShowMine {
    //Limitation: Doesn't allow specific types to define their own way of being shown :(
    def show[A](a: A): String = s"$a"

    def showInt: Show[Int] =  
        new Show[Int] {
            def show[Int](a: Int): String = s"int $a" 
        }
}

//cumbersome usage
println(ShowMine.showInt.show(1))
println(ShowMine.show(1))


//Theirs

object Show {
    //Note use to implicits compared to mine
    def show[A](a: A)(implicit sh: Show[A]):String =  sh.show(a)

    implicit val intCanShow: Show[Int] = 
        new Show[Int] {
            def show[Int](int: Int): String = s"int $int"
        }
}

//cumbersome usage
println(Show.intCanShow.show(1))
println(Show.show(1))
