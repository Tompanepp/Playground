val length = 6
val pairs = for {
    i <- 0 until length
    j <- i + 1 until length
}  yield (i, j)

print(pairs)