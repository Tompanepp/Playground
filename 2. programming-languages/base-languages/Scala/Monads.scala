/*
    Resource: https://medium.com/@sinisalouc/demystifying-the-monad-in-scala-cc716bb6f534
    Note: The type param on Monad
    It's a Monad of type A(could be String, Book etc)
*/
trait Monad[A] {
    def flatMap[B](f: A => M[B]): M[B]
}

//performs the wrapping part
//can this of as a Monad constructor
//that's why its not in the Monad trait
def unit[A](a: A): M[A]



/*
    Alternative definition
    trait Monad[A] {
        def map[A](f: A => B): M[B]
        def flatten[A](f: M[M[A]] => M[A]): M[A]
    }

    def unit[A](a: A): M[A]

*/


//Option Monad
trait User {
    val child: Option[User]
    val name: String
}

object UserService {
    def getUser(name: String): Option[User] = /*get the user*/ 
}

val getChild = (user: User) => user.child

/*Now let’s say we want to load a user from the database and if he exists we want to see if he has a grandchild*/
val user = UserService.getUser("foo")
val child = user.flatMap(getChild)
val grandchild = child.flatMap(x => UserService.getUser(x.name).child)
val hasGrandChildren = grandchild.isDefined

//better way
//since the child is also a user
UserService.getUser("foo")
.flatMap(getChild)
.flatMap(getChild)
