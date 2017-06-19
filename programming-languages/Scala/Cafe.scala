/**
  * Created by t2p on 2016/03/06.
  */
class CreditCard(){}
class Coffee(Price: Double){}

class Cafe {

  //Imperative
  def buyCoffee(cc: CreditCard): Coffee = {
    val cup = new Coffee()
    cc.charge(cup.Price) /*Side effect, something happening on the side. Outside the scope
    of what our function is designed to do (return/give us a coffee)*/
    cup
  }

  def buyCoffee(cc: CreditCard, p: Payments): Coffee = {
    //Payments = interface
    val cup = new Coffee()
    p.charge(cc, cup.Price) // Side effect
    cup
  }


  //Functional solution
  //Return the Coffee and it's charge
  //Let the consumer worry about processing the charge
  def buyCoffee(cc: CreditCard) : (Coffee, Charge) = {
    val cup = new Coffee()
    (cup, Charge(cc, cup.Price))
  }

  def buyCoffees(cc: CreditCard, n: Int) : (List[Coffee], Charge) = {
    val purchases: List[(Coffee, Charge)] = List.fill(n)(buyCoffee(cc))
    val (coffees, charges) = purchases.unzip
    (coffees, charges.reduce((c1,c2) => c1.combine(c2)))
  }

}


case class Charge (cc: CreditCard, amount: Double ){
  def combine (other: Charge) : Charge = {
    if(cc == other.cc)
      Charge(cc, amount + other.amount)
    else
      throw new Exception("Can't combine the two charges to differenct cards") // SIDE EFFECT
  }

  def coalesce(charges: List[Charge]) : List[Charge] =
      charges.groupBy(_.cc).values.map(_.reduce(_ combine _)).toList
}