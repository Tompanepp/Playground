//package com.praise.classesandsingletons

class greetCareFully(greeting: String){
  if(greeting == null)
    throw NullPointerException
  def greet() = print(greeting)
}

val g3 = new greetCareFully(null)
g3.greet()