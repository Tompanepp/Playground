
/*
    Objective:
        Return minimum swaps required

    You are allowex to swap any elements

    Assumptions
        Number always start from 1
*/

/*
    Foreach value, currentIndex pair
        expectedIndexValue = index + 1
        if expectedIndexValue == value, continue
        else 
            currentValueCorrectIndex = value - 1
            swap(currentIndex, currentValueCorrectIndex)
*/

def minimumBribes(list: Array[Int]): Unit = {
    var swaps = 0
    var swapped = true
    val zeroIndexOffset = 1

    def swap(indexA: Int, indexB: Int) = {
        val tempB = list(indexB)
        list(indexB) = list(indexA)
        list(indexA) = tempB
    }
    var i = 2
    while(i > 0) {
        swapped = false
        list.zipWithIndex.foreach {
            case(value: Int, index: Int) => 
                println(value, index)
                val expectedIndexValue = index + zeroIndexOffset
                println(s"expectedIndexValue $expectedIndexValue")
                if(expectedIndexValue != value) {
                    swapped = true
                    swaps += 1
                    val currentValueCorrectIndex = value - zeroIndexOffset
                    println(s"currentValueCorrectIndex $currentValueCorrectIndex")
                    swap(index, currentValueCorrectIndex)
                    list.foreach(print)
                    println
                    return
                }
        }
        i -= 1
    }

    println(swaps)
}

minimumBribes(Array(4, 3, 1, 2))