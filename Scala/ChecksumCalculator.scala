package com.progfun.classesandobjects

import scala.collection.mutable.Map

/*class ChecksumCalculator {

  private var sum = 0

  def add(b: Byte): Unit = {
    sum += b
  }

  def checksum: Int = {
    return ~(sum & 0xFF) + 1
  }
}

class ChecksumCalculator2 {

  private var sum = 0

  def add(b: Byte): Unit = {
    sum += b
  }

  def checksum: Int = {
    //return not necessary. Scala methods returns the last value computed by the method
    //i.e. a method in Scala is an expresion that yields one value which is returned
    //return ~(sum & 0xFF) + 1
    ~(sum & 0xFF) + 1
  }
}

class ChecksumCalculator3 {

  private var sum = 0

  def add(b: Byte): Unit = sum += b

  def checksum: Int = ~(sum & 0xFF) + 1

}*/


//Scaldocs starts with /**
/** A class that calculates a checksum of bytes. This class
  * is not thread-safe.
  */

class ChecksumCalculator {

  private var sum = 0

  def add(b: Byte) {
    sum += b
  }

  //Procedural style: Method executed only for its side effects.
  //  Always returns Unit (i.e. Scala compiler converts the result of the method body to Unit)
  def checksum: Int = ~(sum & 0xFF) + 1

}


object ChecksumCalculator {

  private val cache = Map[String, Int]()

  def calculate(s: String): Int =
    if (cache.contains(s))
      cache(s)
    else {
      val acc = new ChecksumCalculator
      for (c <- s)
        acc.add(c.toByte)
      val cs = acc.checksum
      cache += (s -> cs)
      cs
    }

}