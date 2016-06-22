/My final solution was as follows:
object Main {

  def smoke(mixtures: IndexedSeq[Int]): Long = {

    val cache = collection.mutable.Map[(Int, Int), Long]()

    def minSmoke(left: Int, right: Int): Long = {
      if (right - left < 1) 0
      else cache.getOrElseUpdate((left, right), {
        val sub = (left until right) map {
          i => minSmoke(left, i) + minSmoke(i + 1, right) + sum(left, i) * sum(i + 1, right)
        }
        sub.min

      })

    }

    def sum(left: Int, right: Int): Long = {
      val sum = (left to right).foldLeft(0l) { case (acc, n) => acc + mixtures(n) }
      sum % 100
    }
    minSmoke(0, mixtures.size - 1)
  }

  def main(args: Array[String]) {

    val scanner = new java.util.Scanner(System.in)
    while (scanner.hasNext) {
      val mixtures = for (m <- 1 to scanner.nextInt) yield scanner.nextInt
      println(smoke(mixtures))

    }

  }

}
