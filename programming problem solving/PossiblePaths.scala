
0 0 1 0 0 1 0

7



//know all possible combinations

    private def count(jumps: Int, currentPosition, clouds: Array[Int]) {
        if(currentPosition >= clouds.length) jumps
        else if clouds(currentPosition + 2 != 1) count(jumps + 1, currentPosition + 2, clouds)
        else count(jumps + 1, currentPosition + 1, clouds)
    }