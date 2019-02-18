import scala.collection.immutable.ListMap

val subtractRomans = Map(900 -> "CM",
                   400 -> "CD",
                   90 -> "XC",
                   40 -> "XL",
                   9 -> "IX",
                   4 -> "IV")

val singles = Map(10 -> "X",
                  5 -> "V",
                  1 -> "I")

val baseConversionTable = ListMap({ subtractRomans ++ singles }.toSeq.sortWith(_._1 > _._1): _*)

/*
    subtract largestConversion from value
        if difference > 0 
            
*/
def latinToRoman(value: Int): String = {
    ???

}