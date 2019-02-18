def birthdayCakeCandles(n: Int, ar: Array[Int]): Int = {
  val length = ar.length
  val maxHeight = if (length == 0) 0 else ar.reduceLeft(_ max _)
  ar.filter(x => x == maxHeight).length
}


assert(birthdayCakeCandles(4, Array(3, 2, 1, 3)) == 2)
assert(birthdayCakeCandles(15,Array(3, 2, 1, 3, 7, 7, 7, 1, 2, 5, 3, 3, 5, 2, 1)) == 3)
assert(birthdayCakeCandles(4, Array(3, 2, 1)) == 1) //note the age and ar elements are not the same, for sneaky input
assert(birthdayCakeCandles(4, Array()) == 0)
assert(birthdayCakeCandles(1, Array(1)) == 1)
assert(birthdayCakeCandles(2, Array(1, 2)) == 1)