object Solution {

    case class Node(characters: Map[Char, Node],
                    isCompleteWord: Boolean)
    val emptyNode = Node(Map.empty, false)

    def addWord(word: String): Node = {
        def add(rootNode: Node, previousRootKey: Char,sv: Node ,contact: List[Char]): Node = contact  match {
                case head :: tail if !rootNode.characters.contains(head) => 
                    println(rootNode)
                    val nextSV = (head -> emptyNode)
                    if(rootNode.characters.size != 0){
                        val rootUpdated = rootNode.copy(characters = rootNode.characters(previousRootKey).characters + nextSV)
                        add(rootUpdated, head, nextSV._2, tail)
                    }
                    else{
                        val rootUpdated = rootNode.copy(characters = rootNode.characters + nextSV)
                        add(rootUpdated, previousRootKey, nextSV._2, tail)
                    }
                case head :: tail if rootNode.characters.contains(head) => ???
                    //add(contacts.characters(head), tail)
                case Nil => rootNode  
            }
        add(emptyNode,'x',emptyNode, word.toList)
    }

    def main(args: Array[String]) {
        val stdin = scala.io.StdIn

        //val n = stdin.readLine.trim.toInt

        
            //val opContact = stdin.readLine.split(" ")

            val op = "add"

            val contact = "Pr"

            if(op == "add"){
                val contacts = addWord(contact)
                println(s"Top newNode isCompleteWord ${contacts.isCompleteWord}")
                println(contacts.characters)
            }
            else {
                /*val totalFound = findPartial(contact)
                println(totalFound)*/
            }
        
    }
}
