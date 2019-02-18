    def rotLeft(a: Array[Int], d: Int): Array[Int] = {
        val arrayLength = a.length
        val newArray = new Array[Int](arrayLength)
        val zippedArray = a.zipWithIndex
        zippedArray.foreach{ i =>
            val elementIndex = i._2
            val newIndex = calculateNewIndex(elementIndex, d, arrayLength)
            newArray(newIndex) = a(elementIndex)
        
        }
        newArray
    }

    def calculateNewIndex(currentIndex: Int, rotations: Int, arrayLength: Int): Int = {
        if(rotations == 0) currentIndex
        else {
            val newIndex = currentIndex - 1
            calculateNewIndex(if(newIndex >= 0) newIndex else arrayLength - 1, rotations - 1, arrayLength)
        }
    }

    /*def rotLeft(a: Array[Int], d: Int): Array[Int] = {
        if(d == 0) a
        else rotLeft(rotate(a, a.length), d - 1)
    }

    def rotate(a: Array[Int], arrayLength: Int): Array[Int] = {
        val newArray = new Array[Int](arrayLength)
        for{ 
            i <- 0 until arrayLength
            val nexIdex = if(i - 1 >= 0) i - 1 else arrayLength - 1
        } yield {
            newArray(nexIdex) = a(i)
        }

        newArray
    }*/

    rotLeft(Array(1, 2, 3, 4, 5), 3).foreach(print)

    //23451
    //34512
    //45123