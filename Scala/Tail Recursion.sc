
//Functional
def approximate(guess: Double): Double =
  if(isGoodEnough(guess)) guess
  else approximate(improve(guess)) // Tail recursive (i.e. The last thing
// the function does it to call itself.
//Scala compiler replaces tail recursion with a jump back to the beginning of the function


//Imperiative
def approximate2(guess: Double) = {
  var initialGuess = guess
  while (!isGoodEnough(guess))
    initialGuess = improve(guess)
  initialGuess
}

def improve(guess: Double): Double = ??? //guess + guess/Math.pow(guess, 2)

def isGoodEnough(guess: Double): Boolean = ??? //if (guess == 1) true else false


//Non tail recurive
def boom(x: Int): Int =
  if(x == 0) throw new Exception("Boom!")
  else boom(x  - 1) + 1


//boom(5)


def bang(x: Int): Int =
  if(x == 0) throw new Exception("Bang!")
  else boom(x  - 1)

bang(5)