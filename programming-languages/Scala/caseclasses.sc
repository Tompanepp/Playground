case class Person(name: String, var age: Int)

val person = Person("Praise", 25)
person.age = 26
//person.name = "fd", fails as it immutable

person.copy(name = "Papudi")

class Person2(name: String, var age: Int)

val person1 = new Person2("Praies", 25)
person1.age = 45
person.name


