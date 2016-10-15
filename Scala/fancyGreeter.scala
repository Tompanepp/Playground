//package com.praise.classesandsingletons

class FancyGreeter(greeting: String){
  def greet() = println(greeting)
}

val g2 = new FancyGreeter("Hello")
g2.greet()