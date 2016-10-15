
//Immutable
var jetset = Set("Boeing","Airbus")
jetset += "Lear"
jetset.+=("Leo") // This actually creates a new list under the hood, you do not add to the list(it's immutable0n
println(jetset.contains("Cessna"))

//Mutable
import scala.collection.mutable.Set
val movieset = Set("Hitch","The book thief")
// movieset can be a val because the set will not be reassigned
// The same one will be appended with the new value
// In cotact jetset needs to be a var in order for the new set that will be created to be reassigned to it
movieset += "OOO"
movieset.+=("Another film")

println()

//Hashset

import scala.collection.immutable.HashSet
val hasset = HashSet("Tomatoes","Chillies")
println(hasset + "Coriander")
