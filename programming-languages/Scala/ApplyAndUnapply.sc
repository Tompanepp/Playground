object Email {

  def apply(user: String, domain: String): String = user + "@" + domain

  //takes apart an email address
  //This method turns the Email object into an Extractor object (The apply method doesn't
  //have to exist for it to be an Extractor
  def unapply(value: String): Option[(String, String)] = {
    val parts = value split "@"
    if (parts.length == 2) Some((parts(0), parts(1))) else None
  }


  /*
    More notes: It's recommended that you define apply and unapply as dualities of each
    other
    i.e. See code below
  */

}

// Duality example
Email.unapply(Email("tompanepp", "gmail.com")) // returns Some("tompanepp", "gmail.com")
//The result of apply must be deconstructable by unapply

Email.unapply("tompanepp@gmail.com") match {
  case Some((a, b)) => Email.apply(a, b) //returns tompanepP@gmail.com
  //The result of unapply must produce inputs that apply can use to reconstruct the deconstructed value
}



//Why is this unsefull?
Email.unapply("tompanepp@gmail.com")
Email.unapply("tompanepp gmail.com")
Email("tompanepp", "gmail.com")


/*
  When `pattern matching` encounters a pattern referring to an Extractor object,
  it invokes the Extractor object's unapply method
    on the selector expression
*/

val selectorString = "tompanepp@gmail.com"

selectorString match {
  case Email(user, domain) => println(s"User: $user. Domain: $domain")
}

//selector expression doesn't have to be String because unapply expects a string

/*
  Here is how things are evaluated
  1. check if selector is a string
  2. if not a string, cast selector to string
  3. attempt to pattern match
  4. else if selector is a string
  5. attempt to pattern match

 */
val selector: Any = "tompanepp@gmail.com"
selector match {
  case Email(user, domain) => println(s"User: $user. Domain: $domain")
}


//Extractors that bind to one variable

//Pattern match strings that consist of the same substring appearing twice in a row
//This another example of a custom pattern match (For strings of this type)
object Twice {

  def apply(arg: String): String = arg + arg

  def unapply(arg: String): Option[String] = {
    val subStringLength = arg.length/2
    val half = arg.substring(0, subStringLength)

    if(half == arg.substring(subStringLength)) Some(half) else None
  }
}


val p = "PraisePraise"
Twice.unapply(p) // returns Praise

val z = "PraiseTompane"
Twice.unapply(z) // returns None

//Extractor that bind to no variable (return Boolean)
//pattern match all uppercase strings
object UpperCase {
  def unapply(arg: String): Boolean = arg.toUpperCase() == arg
}

//Combining all these extractors in a fun pattern match


def EmailAddressWithConsecutiveRepeatedUpperCaseName(s: String) = s match {
  case Email(Twice(x @ UpperCase()), domain) => "match " + x + domain
  case _ => "No match"
}

EmailAddressWithConsecutiveRepeatedUpperCaseName("PRAISEPRAISE@GMAIL.COM")
EmailAddressWithConsecutiveRepeatedUpperCaseName("praisepraise@gmail.com")
EmailAddressWithConsecutiveRepeatedUpperCaseName("PRAISEdPRAISE@GMAIL.COM")
