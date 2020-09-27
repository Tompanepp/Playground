/*
  Invalid in Worksheet???
  Valid definitions used below
  object Day  {
  type Day

  val Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}
*/

/*
  //Object without a type defined
object DayWithoutType {
  val Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}

//Doesn't work because the `object` doesn't define a type
def doWorkOnMonday(day: DayWithoutType) = day match {
  case DayWithoutType.Monday => print("Doing some work")
  case _ => throw new IllegalArgumentException("These days such")
}*/


//Works because the object defines a type and can thus be pattern matched
object Day extends Enumeration {
  type Day = Value

  val Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday = Value
}

//what???????? You have to import it to work
import Day._

def doWorkOnMonday(day: Day) = day match {
  case Monday => println("Doing some work")
  case _ => throw new IllegalArgumentException("These days such")
}
