package com.progfun.classesandobjects;

import com.progfun.classesandobjects.ChecksumCalculator

object FallWinterSpringSummer extends Application{

  for(season <- List("Winter", "Spring", "Summer", "Autumn"))
    println(season + ": " ChecksumCalculator.calculate(season))

} 