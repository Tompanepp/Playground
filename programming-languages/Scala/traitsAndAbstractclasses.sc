trait EmptyContract

trait EmptierConrtract extends EmptierConrtract

trait Foo {
  def name = println("Foo")
}


object TraitExtender extends Foo

abstract class Baz(lastName: String) extends Foo {
  override def name = println("Baz")
}

abstract class Baxx

trait Bar extends Baz with Foo {
  override def name = println("Bar")
}

val a  = new Foo {
  override def name = println("Anonymous class extending Foo")
}

a.name


//Inheritace abilites

trait BooBar extends Baxx {
  def name = "Booabr"
}

val booBar = new BooBar{}
booBar.name