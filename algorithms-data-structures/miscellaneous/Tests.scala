val s = List(1)

s match {
    case head :: tail => println("head with tail")
    case Nil => println("head with Nil")
}