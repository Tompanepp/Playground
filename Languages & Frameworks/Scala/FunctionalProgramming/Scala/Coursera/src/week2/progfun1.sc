package week2

object progfun1 {
  def gcd(a: Int, b: Int): Int =
  	if (b == 0) a else gcd(b,a%b)             //> gcd: (a: Int, b: Int)Int

	gcd(1,)                                   //> res0: Int = 1
}