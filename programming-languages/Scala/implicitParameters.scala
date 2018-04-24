case class PreferredPrompt(value: String)
case class PreferredDrink(value: String)

object Greeter {

    def greet(name: String)(implicit prompt: PreferredPrompt, drink: PreferredDrink): Unit = {
        println(s"Hello $name the system is ready for you.")
        println(s"Would you like some ${drink.value} while you hack away?")
        println(s"${prompt.value}")
        println()
    }
}

//fails, no implicit found
//Greeter.greet("Joe")

object UserPreferences {
    implicit val prompt = PreferredPrompt("Hello Master >")
    implicit val drink = PreferredDrink("Tea")
}

import UserPreferences.prompt
import UserPreferences.drink

//Now works, since implicits are define AND in scope
Greeter.greet("Joe")

//Use STIILL can use it like this too

val preferredPrompt = PreferredPrompt("Hail the Great! >")
val preferredDrink = PreferredDrink("Redbull")

Greeter.greet("Jerry")(preferredPrompt, preferredDrink)

