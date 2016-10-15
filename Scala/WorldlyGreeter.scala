
//class
class WorldlyGreeter(greeting: String) {
  def greet(): Unit = {
    val worldlyGreeter = WorldlyGreeter.worldify(greeting)
    println(worldlyGreeter)
  }
}

//companion object
object WorldlyGreeter {
  def worldify(s: String) = s + "World!"
}