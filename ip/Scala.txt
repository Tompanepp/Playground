What is Scala?
    Object Orientated Multi-paradigm programming language that supports functional and imperative programming.

What is the difference between a var, a val and def?
    var is a keyword for creating mutable object pointers (also known as variables)
    val is a keyword for creating immutable object pointers
    def is a keyword for functions or methods

What is a class?
    It is a self contained construct that encapsulates its data and behaviour that allows us 
    to model representations of entities.

What is the difference between a trait and an abstract class?
    1. traits
        Traits according to Martin, the craetor or Scala are fundamental elments of code reuse in the language.
        They are a construct that can encapsulate fields and fucntions that can be reused by mixing them into classes and objects

        e.g InvestorFacade
            encapsulate dealing with person and organisation investor types

        We often use them to define abstract contracts that are implemented by classes/objects
        e.g. PaymentClient for aa api-payment
            trait PaymentClient {
                def retrievePayment(id: Int): Payment
                def createPayment(payment: Payment): Payment
            }

            trait PaymentRestClient() extends PaymentClient

    2. abstract class
        a class that has unimplemented members;(often method members??)
    
    Differences of trait and classes (not just abstract classes)
        - classes can have class constructor parameters ** traits cannot have constructor parameters
        - super.method (e.g. super.toString) on a class are statically bound(meaning we know at compile time which
        super class' implementation of toString will be invoked ) ** traits super.method is dynamically bound(
            we only know at runtime when the trait is mixed into a concrete class, which implementation of super.toString will be called
            {The super class of the class it was mixed into})
                => This makes us able to use traits as stackable modifications


    trait properties    
        - they define a type
            trait Philosophize
            val frog: Philosophize

        - linearization
            class Animal
            trait Furry extends Animal
            trait HasLegs extends Animal
            trait FourLegged extends HasLegs
            class Cat extends Animal with Furry with FourLegged


    Abstract class                          | Trait
        - Can have classs constructor parameters             | - Cannot have constructor parameters
        - `super` method invocations are bound statically    | - `super` method invocations are bound dynamically
            => Why do we care about this?
        - cannot be extended from a class that only inherits | - Can be mixed into a class that already inherits from
        from another class                                       from another class


 
What is the difference between an object and a class?

    An object( the Singleton object) is construct that allows programemrs to encapsulate behaviour that is not specific to any specific class

In OOP an object is a specific instance of a class with the members populated with some specific values.

    A class is construct used to model our representations of concepts
        e.g. If we wanted to model a Payment it would have the following members
            Id,
            amount,
            currency
            sourceAccount
            destinationAccount

    We could add behaviour to this class as well, but we often don't do this when following a functional 
    programming approach because this lends itself to mutating the class state.
    Introducint mutable state introduces a lot of complexity because the class objects can
    be different at different moments in the program, which affects how the program behaves.

    This also introduces a lot of mental overhead on the programmer to reason about the behaviour
    of the program

    Differences
    
    Object                   | class
    Cannot be instantiated   | Can be instantiated

What is a case class?

    A syntactic sugar construct that allows programmers to define only the class constructor parameter.
    The Scala compiler then generates a lot of the boilerplate code such as 
    equality
    toString etc.
    no need for new keyword
    copy method?

What is the difference between a Java future and a Scala future?
    Java Future => blocks the current thread to get the result from the Future using the `get` method
    Scala Future: Allows for true asynchronous computation by allowing us to attach failure/success callbacks for completion and NOT block the current thread
    EXAMPLE???

What is the difference between unapply and apply, when would you use them?

    Methods that can be applied to Function types (Function1.....Function22)

    apply => allows you to specificy what should be done with a function's parameters
             
             called an injection

    unapply => allows you to define custom pattern matching by stipulating
               how values should be taken apart when pattern matching encouters a 
               pattern referencing your Extractor object in whhich your implementation of unapply is defined.
               
               called an extraction

            EXAMPLE (from programming in Scala book)
                object Email {

                    //takes apart an email address
                    def unapply(value: String):  (String, String) = {
                        val parts = value split "@"
                        if(parts.length == 2) (parts(0), parts(1)) else None
                    }
                }

What is a companion object?
    A Singleton object defined in the same source file as a case class, tht shares the same name with the class.
    Defined in this manner;
        - the two constructs can access each other's private members
        - implicit conversions defined in the companion object are in scope anywhere the companion class is used.

    Difference between class and object

    class                           | object
    cannot have static methods      | can have static method
    can take parameters             | cannot take parameters, unless you define an implementation of the `apply` mehtod

What is the difference between the following terms and types in Scala: Nil, Null, None, Nothing?

    Nil                                     | Null                                              | None                                          | Nothing
    Objec that defines an empty list,       | It is the type for the null references            | Value of the Option type                      | A subtype of every other type
                                            | references are values(nulls are one of the values)| Represents the absence of a value in an Option|
    It is a list of Nothing                 | It's a subtype of every reference class           |                                               | Has no values
                                            | (i.e every class that inherits from AnyRef)       |                                               | Used to handle corner cases in Scala's class OO type system in a uniform way 
                                            | It's incompatible with value types (You cannot                                                          | Often used to define abnormal termination
                                             assign Null to an Int, Decimal etc) 
                                            | Used to handle corner cases in Scala's class OO type system in a uniform way     
                                            


    Note: Check out the implementations of these types/values inside Scala
          Study the Scala type hierarchy

What is Unit?
   A subtype of AnyVal that has one value, {()}.
   Used to represent that a function does not return any intereting value(it does return the value `()`, but it's an `interesting` value)

   Why Unit over Nothing?
    Nothing has no value, the function would not return(You would need an exception to exit the function hence it's used to signal abnormal termination)
    https://stackoverflow.com/questions/13539822/whats-the-difference-between-unit-and-nothing

What is the difference between a call-by-value and call-by-name parameter?

    call-by-value parameter                                                             | call-by-name parameter
        the value of a parameter is known(computed) before it's passed to a function    |   the value of the parameter is passed as an unevaluated expression,
          a copy of the value is passed as the formal parameter                         |  it's value is only known once evaluated inside tehe called function
                                  

How does Scala's Stream trait levarages call-by-name?
    Allows a Stream to have an infinite number of elments, which will only be evaluated when they're needed

Define uses for the Option monad and good practices it provides.
    Used model cases where a value might not exist
    Example:
        retrieveProduct(id: Int): Option[Product]

    Best practices:
        avoid operations on null values
        singals to developers that something might not have a value and they must check before using it and the type system enforces this
            You instead have compile time type errors instead of runtiem null pointer exceptions
            e.g val a: Option[Int] = 1
            a + 1 //won't work need to extract value of a first

How does yield work?
    generates a value for each iteration in a for comprehension
    turns for comprehension statements into expressions

Implicits flow
    compile
    type error
    is there implicit conversion?
        Yes, apply it
             resume compilation
        No, fail

Implicits rules

    marking rule: implicit conversions need to be marked with 'implicit'. e.g implicit def foo | implicit val b

    scope rule: 
        only consider implicit conversions in scope
        implicit conversion must have a single identifier(i.e. it's name must be in scope, it cannot be SomeObject.conversion)
            exception here is if it is defined in a Companion object of a class
                Then it's available where ever that class is used(It's said to be associate with the class' type)

    one-at-a-time-rule: One one implicit is tried
        convert1(convert2(x)) + y will not compile
        reason: longer compilation times for errorneous code
                greater difference between what the programmer writes and what the code does
        NB: Can be circumvented using having the implicit conversions take implicit parameters

    explicit types first: If code type checks with explicit types, no implicits are tried
        refer the "Implicits flow" above

    naming implicits
        can have arbitary names
        The names matter only in two cases
            1. if you want to write it explicitly in a method application
            2. for determining which implicit conversions are available at any point in a program

    when are implicits tried   
        Three places where implicits are used in the language
            1. conversions to expected type
            2. conversions of the receiver of a method call
            3. implicit parameters

            1. def calculate(a: Int) // can be called like so calculate(1.0) 
                if implicit conversion from Double to Int is in scope
            
            2. "adfdf".exists("a") gets converted to stringWrapper("adfdf").exist 
                String gets converted to stringWrapper

                Use cases
                    1. Smoother integration of a new class into an existing class hierarchy
                    2. Support writing DSLs in the language

                    1. Integration with new types
                        class Rational(x: Int, y: Int){
                            def + (that: Rational): Rational
                            def + (that: Int): Rational
                            ...
                        }   
            
                        val a = Rational(1,1)
                        a + a //valid
                        1 + a //invalid, + not defined on Int that takes Rational

                        Solution
                        implicit def intToRational(x: Int) = Rational(x, 1)

                        1 + a //now works

                        Note: We integrated our new Rational class in the language with ease
                              And it feels native to the language(Client programemrs don't need to convert Int to Rationals everywhere
                              they use out library)

                    2. Simulating new Syntax(DSLs)

            3. provide more information to the called function
                about what the caller wants

                someCall(a) converted to someCall(a)(b)
                new someClass(a) converted to new someClass(a)(b)
                NB: Adding a missing parameter list to complete the function call

    when multiple implicits apply
        - rule: apply the more specific implicit conversion
        When is one implicit conversion for specific than another?
            -  The argument type of the former is a subtype of the latter
            -  Both conversions are method And
                the enclosing class of the former extends the enclosing class of the latter

Explain the implicit parameter precedence.

What operations is a for comprehension syntactic sugar for?
    map
    flatMap


Streams:
What consideration you need to have when you use Scala's Streams?

What technique does the Scala's Streams use internally?

Zip

ZipWithIndexz
