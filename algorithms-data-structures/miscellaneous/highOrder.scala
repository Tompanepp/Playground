def sumX(x: Int, y: Int, f: (Int, Int) => Int) = f(x, y)

println(sumX(3, 5, (x, y) => x*x*x + y*y*y))