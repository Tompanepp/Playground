
trait Friendly{
  def greet() = "Hi" //lacking an explicit return statement, Scala methods will return the value of the last expression
  def hug() = "I'm hugging you now"
}

class Dog extends Friendly{
  override def greet() = "Woof"
}

class HungryCat extends Friendly{
  override def greet() = "Meow"
}

class HungryDog extends Friendly{
  override def greet() = "I's like to eat my dog food now"
}

trait exclamatoryGreeter extends Friendly{
  override def greet() = super.greet() + "!"
}

var pet: Friendly = new Dog
println(pet.greet())

pet = new HungryCat
println(pet.greet())

pet = new HungryDog
println(pet.greet())

pet = new Dog with exclamatoryGreeter
println(pet.greet())

pet = new HungryCat with exclamatoryGreeter
println(pet.greet())

pet = new HungryDog with exclamatoryGreeter
println(pet.greet())