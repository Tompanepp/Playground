//Why use Unit to represent the semantics that a function RETURNS no interesting value

def iReturnUnit : Unit = ()

def iReturnNothing: Nothing = throw new Exception("I have no value, so here is an exception for you :)") //Nothing has no value

//does not work, Int is not a Subtype of Nothing
//def iReturnNothing: Nothing = 1

val unitValue = iReturnUnit

println("The unit value", unitValue)
val nothing = iReturnNothing