/*
    1. Abstract Data Types (ADT)
    2. Structured Recursion
    3. Sequencing Computation
*/

/*
    1. 
        Model data in terms of their logical relationship??
        Two types
            1.1. Product type (AND logical operator)
                G has a F and H

            1.2. Sum type (OR logical operator)
                A is a B or C

    2.
        Recursion over ADTs

    3. 

        3.1. fold
        3.2. map
        3.3. flatMap

*/

//Code

//1.
    //Just some types to play with
        trait F
        trait H
        trait Z
        trait E
        trait Result
        trait SomeGenericType1
        trait SomeGenericType2
    //1.1.Product Type


        case class G(f: F, h: H)

    //1.2. Sum Type

        sealed trait A
        case class B() extends A
        case class C() extends A


//2.
//Complete ADT

def saveTheWorld(l: F, bd: H): Result  = ???

def destroyTheWold(o: E, t: Z): Result = ???

trait SomeADT {
    //This is the structured recursion here!!!
    //You always follow this pattern when computing with the ADTs
        // This lends itself well to the type system helping you
            //If your pattern match is inexhaustive, it will tell you. Nice huh? :)
    def doSomething() = this match {
        case SomeADTValue1(a: F, b: H) => saveTheWorld(a, b)
        case SomeADTValue2(p: E, q: Z) => destroyTheWold(p, q) 
    }
}

case class SomeADTValue1(f: F, g: H) extends SomeADT

case class SomeADTValue2(e: E, z: Z) extends SomeADT


//3.
    //3.1 abstration over recursion of ADTs
    //Geneic mapping of arbitary types??

//Same ADT above, renamed to illustrate this
trait SomeADT2 {
    //You simpy inject the operations to be executed for each value of the ADT
    def fold(f: (F, H) => Result, g: (E, Z) => Result) = this match {
        case SomeADT2Value1(a: F, b: H) => f(a, b)
        case SomeADT2Value2(p: E, q: Z) => g(p, q) 
    }

    def map(f: SomeGenericType1 => SomeGenericType2)

    def flatMap(f: )
}

case class SomeADT2Value1(f: F, g: H) extends SomeADT2

case class SomeADT2Value2(e: E, z: Z) extends SomeADT2

