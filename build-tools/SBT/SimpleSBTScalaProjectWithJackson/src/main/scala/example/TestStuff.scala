package example

import scala.collection.immutable.HashMap

object TestStuff extends App {


  def finalPrice(prices: Array[Int]) {

    val pricesWithIndex = prices.zipWithIndex

    pricesWithIndex.map{
      price => if(price._1 >= )
    }
  }

  /*  def romanizer(numbers: Array[Int]): Array[String] = {
      val NumberConverter = scala.collection.immutable.Map(
        1 -> "I",
        2 -> "II",
        50 -> "L",
        3 -> "III",
        90 -> "XC",
        4 -> "IV",
        100 -> "C",
        5 -> "V",
        400 -> "CD",
        6 -> "VI",
        500 -> "D",
        7 -> "VII",
        900 -> "CM",
        8 -> "VIII",
        1000 -> "M",
        9 -> "IX",
        10 -> "X",
        40 -> "XL"
      )

      //numbers.map{(NumberConverter)}

      numbers.map{ x =>
        val numberPlaces = breakNumberDown(x).zipWithIndex
        val roman = numberPlaces.map(
          place => if(place._1 != 0 && place._2 == 3) NumberConverter(place._1)
                   else if(place._1 != 0 && place._2 == 2) NumberConverter(place._1)
                   else if(place._1 != 0 && place._2 == 1) NumberConverter(place._1)
                   else if(place._1 != 0 && place._2 == 0) NumberConverter(place._1)
                   else ""


                   SOLUTION HERE: Find a number that is divisible by the position(i.e. 10, 100, 100)
                    that is <= currentDigit * positino (i.e. 7 * 10) where 7 is the digit in the tens place
        )
        roman.mkString("")
      }
    }

    def breakNumberDown(n: Int) = {
      val ones = n%10;
      val tens = (n/10)%10;
      val hundreds = (n/100)%10
      val thousands = (n/1000);

      Array(thousands ,hundreds, tens, ones)
    }

    romanizer(Array(5, 75, 80, 99, 100, 50)).foreach(println)*/

}
