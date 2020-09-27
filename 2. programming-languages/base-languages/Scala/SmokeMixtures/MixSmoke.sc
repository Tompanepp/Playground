//Here is our original solution:
object Main extends App {

  def smoke(mixtures: IndexedSeq[Int]): Int = {

    def smoke(acc: Int, interim: IndexedSeq[Int]): Int = {

      if (interim.size < 2) acc
      else {
        val pair: (Int, Int) = min(mixtures)
        val nextInterim = interim diff IndexedSeq(pair._1) diff IndexedSeq(pair._2) :+ mix(pair._1, pair._2)
        smoke(acc + (pair._1 * pair._2), nextInterim)
      }
    }

    def mix(a: Int, b: Int): Int = (a + b) % 100

    def min(mixtures: IndexedSeq[Int]): (Int, Int) = {
      val pairs = for (i <- 0 until mixtures.size - 1; j <- i + 1 until mixtures.size) yield (mixtures(i), mixtures(j))
      pairs minBy { case (i, j) => mix(i, j) }

    }
    smoke(0, mixtures)
  }

  val scanner = new java.util.Scanner(System.in)

  for (i <- 1 to scanner.nextInt) {
    val mixtureCount = scanner.nextInt
    val mixtures = for (m <- 1 to mixtureCount) yield scanner.nextInt
    val count: Int = smoke(mixtures)
    println(count)

  }

}
Main.smoke(IndexedSeq(20, 40, 60))
