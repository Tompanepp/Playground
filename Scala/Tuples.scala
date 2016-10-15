//Immutable
//Hold multiple datatyes
//One based-index (i.e. first instance is 1)

val pair =  (99,"Luftballons")
val pair2: Tuple2[Integer,String] = new Tuple2[Integer,String](100,"Do!")
println(pair._1)
println(pair._2)
println(pair2._1)
println(pair2._2)
//._Num is a field in the Tuple where Num is the index of the value

