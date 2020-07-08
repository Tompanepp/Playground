
/*
    Objective:
        Return minimum bribes
            to generate current queue state
        Or "Too chaotic" if it's not possible

    Constraints:
        MaxBribes = 2
        People at the back bribe ones infront
            No backwards bribing
        Initial array was 1,2,3,4,5,6,7,8


        target = 1 2 5 3 7 8 6 4


        1,2,3,4,5,6,7,8

        1,2,5,3,4,6,7,8

        1,2,5,3,7,4,6,8

        1,2,5,3,7,8,4,6

        1,2,5,3,7,8,6,4
        
        
        2 2 2 

    Input:
        final state of the array

    Algo:
        bribes = 0
        for each value
            bribesUsed = abs(value - currentIndex)
            if(bribesUsed > MaxBribes) println("too chaotic")
            else bribes += bribesUsed
*/

def minimumBribes(finalQueue: Array[Int]): Unit = {
    val MaxBribes = 2
    var bribes = 0

    //PROBLEM: double counting
    finalQueue.zipWithIndex.foreach {
        case(value: Int, index: Int) => 
            val zeroIndexOffset = 1
            val bribesUsed = math.abs(value - index - zeroIndexOffset)
            //println(s"bribesUsed $bribesUsed for value $value")
            //assumes once bribed backwards,you won't bribe forwards
            if(value > index) {
                if(bribesUsed > MaxBribes) {
                    println("Too chaotic")
                    return
                }
                else bribes += bribesUsed
            }
    }
    println(bribes)
}