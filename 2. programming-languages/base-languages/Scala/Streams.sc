import scala.math.BigInt
object Main extends App {   
    //lazy val fibs : Stream[BigInt] = BigInt(0) #:: BigInt(1) #:: fibs.zip(fibs.tail)

    val a = Seq(1,2,3)
    val b = a.zip(a.tail)
    b foreach println
    //fibs take 5 foreach println

    val xx = List(1, 2, 3).zip(List("a", "b"))
    xx foreach println
}