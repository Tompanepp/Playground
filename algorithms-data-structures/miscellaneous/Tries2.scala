object Solution {
    /*
      -> Implement Tri data structure
      Node {
        Map(letter, Node)
        bool isEndOfWord
      }

                  /*
                for each char in contact
                    does it exist in contracts?
                        if yes
                            return current contacts
                        else 
                            add AND return new contacts
            */

    */
    case class Node(characters: Map[Char, Node],
                    isCompleteWord: Boolean)

    def addWord(word: String): Node = {

        def buildWordBranch(currentRoot: Node, 
                            currentRootKey: Char, 
                            previousRootKey: Char, 
                            word: Node, 
                            remaingCharacters: List[Char]): Node = remaingCharacters match { 
            case head :: tail if remaingCharacters.length > 1 => 
                val newNode = buildNode(head, false)
                val currentRootUpdated = updateRoot(newNode, currentRoot, currentRootKey)
                val wordUpdated = buildWordBranch(newNode, head, currentRootKey, updateWord(currentRootUpdated, word, currentRootKey, previousRootKey) , tail)
                wordUpdated
                
            case head :: tail if remaingCharacters.length == 1 =>
                val newNode = buildNode(head, true)
                val currentRootUpdated = updateRoot(newNode, currentRoot, currentRootKey)    
                val wordUpdated = buildWordBranch(newNode, head, currentRootKey, updateWord(currentRootUpdated, word, currentRootKey, previousRootKey), tail)
                wordUpdated
     
            case Nil => word
        }

        def updateRoot(newNode: Node, 
                       currentRoot:Node, 
                       currentRootKey: Char) = {
            val currentRootsNode = currentRoot.characters(currentRootKey)
            val update = currentRoot.copy(characters = Map(currentRootKey -> addCharacterToNode(currentRootsNode, newNode)))
            println(update)

            update
        }
    

        def addCharacterToNode(root: Node, newNode: Node) = root.copy(characters = root.characters ++ newNode.characters)

        def updateWord(currentRootUpdated: Node, word: Node, currentRootKey: Char, previousRootKey: Char) = {

            word
            //word.copy(characters = word.characters ++ word.characters(currentRootKey).characters)
        }

        def buildNode(character: Char, isLast: Boolean) = Node(Map(character -> Node(Map.empty, isLast)), false)

        def add(contacts: Node, contact: List[Char]): Node = contact  match {
            case head :: tail if !contacts.characters.contains(head) => 
                val wordStart = Node(Map(head -> Node(Map.empty, false)), false)
                val wordBranch = buildWordBranch(
                    wordStart, 
                    head, 
                    head,
                    wordStart, 
                    tail)

                contacts.copy(characters = contacts.characters + (head -> wordBranch))
            case head :: tail if contacts.characters.contains(head) => 
                add(contacts.characters(head), tail)
            case Nil => contacts  
        }
        

        add(Node(Map.empty, false) , word.toList)
    }


    def main(args: Array[String]) {
        val stdin = scala.io.StdIn

        val n = stdin.readLine.trim.toInt

        for (nItr <- 1 to n) {
            val opContact = stdin.readLine.split(" ")

            val op = opContact(0)

            val contact = opContact(1)

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
}
