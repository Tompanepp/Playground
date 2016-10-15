package com.progfun.classesandobjects

object Summer {

  def main(args: Array[String]) {
    for (arg <- args)
      println(arg + ": " + ChecksumCalculator.calculate(arg))
  }
}