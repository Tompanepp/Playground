//package com.praise.classesandsingletons

class RepeatGreeter(greeting: String, count: Integer){

  def this(greeting: String) = this(greeting, 1)
  def greet() = {
    for(i <- 1 to count)
      println(greeting)
  }

}

val g1 = new RepeatGreeter("Hello", 3)
g1.greet()
val g2 = new RepeatGreeter("Hi")
g2.greet()