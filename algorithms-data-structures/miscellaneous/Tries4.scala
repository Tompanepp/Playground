import scala.collection.mutable.Map
object Solution {

    class TrieNode(var characters: Map[Char, TrieNode],
                   var isCompleteWord: Boolean) {

        private val TrieNode root = new TrieNode(Map.empty, false);

        def this() {
            root = new 
        }
        
        def insert(word: String): Unit {
            
        }
    }
    
    val emptyTrieNode = TrieNode(Map.empty, false)
    val root = emptyTrieNode

    def addWord(word: String): TrieNode = {
        def add(current: TrieNode, contact: List[Char]): TrieNode = contact  match {
                case head :: tail if !current.characters.contains(head) => 
                    val nextTrieNode = emptyTrieNode
                    println(s"current before update $current")
                    current.characters += (head -> nextTrieNode)
                    println(s"current updated $current")
                    println("In first ")
                    //println(s"currentUpdated $currentUpdated")
                    //println(root)
                    //println(s"root $root")
                    add(nextTrieNode, tail)    
                case head :: tail if current.characters.contains(head) => 
                    println("In second ")
                    add(current, tail)
                case Nil => root  
            }
        add(root, word.toList)
    }

    def main(args: Array[String]) {
        val stdin = scala.io.StdIn

        //val n = stdin.readLine.trim.toInt

        
            //val opContact = stdin.readLine.split(" ")

            val op = "add"

            val contact = "Pr"

            if(op == "add"){
                val contacts = addWord(contact)
                println(s"Top newTrieNode isCompleteWord ${contacts.isCompleteWord}")
                println(contacts.characters)
            }
            else {
                /*val totalFound = findPartial(contact)
                println(totalFound)*/
            }
        
    }
}
