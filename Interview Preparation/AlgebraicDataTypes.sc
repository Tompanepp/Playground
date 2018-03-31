/*
    Types of Algebraic data types (ADT)
        Sum Type
            A is a B or C

            final case class B extends A
            final case class C extends A
        
        Product Type
            A has a B or C

            final case class A(b: B, c: C)
*/

// Example of an Full Algebraic data type (i.e. both SumType and Product Type exists) 
sealed trait A
final case class B(d: D, f: E) extends A
final case class C(f: F, g: G) extends A

/*
    Structured Recursion with Pattern matching
    Structured Recursion operates on Algebraic data types
*/

//Note for each Sum Type of your ADT you will have a case in the pattern match
sealed trait A {
    def doSomething: H = {
        this match {
            case B(d, e) => doB(d, e) //problem specific
            case C(f, g) => doC(f, g )//problem specific
        }
    }
}

/*
    Structured Recursion with Polymorphism
*/

sealed trait A {
    def doSomething: H
}

final class B(d: D, f: E) extends A {
    override def doSomething: H = doB(d, f)
}

final class C(f: F, g: G) extends A {
    override def doSomething: H = doC(f, g)
}



//Calculation ADT (Failure or Success => Sum Type; Success has value => Product Type; Failure has error => Product Type)

sealed trait Calculation 

final case class Success(value: Int) extends Calculation

final case class Failure(error: String) extends Calculation


//Structured Recursion over Calculation ADT

sealed trait Calculation {
    doCalculation(arg: Int): H = this match {
        case Success(v) => Success(v + arg)
        case Failure(msg) => Failure(msg)
    }
}

final case class Success(value: Int) extends Calculation

final case class Failure(error: String) extends Calculation


//Sequencing operations

flatMap := F[A] flatMap(A => F[B]) = F[B]
map := F[A] map(A => B) = F[B] 
fold := General transform over ADTs