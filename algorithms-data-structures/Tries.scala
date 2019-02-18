object Solution {
    /*
      -> Implement Tri data structure
      Node {
        Map(letter, Node)
        bool isEndOfWord
      }

    */
    case class Node(characters: Map[Char, Node],
                    isCompleteWord: Boolean)

    def addWord(contacts: Node, contact: List[Char]): Node = contact  match {
        /*
            for each char in contact
                does it exist in contracts?
                    if yes
                        return current contacts
                    else 
                        add AND return new contacts
        */
      
            case curretCharacter :: restOfContact => 
                if(contacts.characters.contains(curretCharacter)) 
                    addWord(contacts.characters(curretCharacter), restOfContact)
                else {
                    //build the branch
                    val branchTopNode = buildWordBranch(Node(Map.empty, false), 
                                                        Node(Map.empty, false), 
                                                        '',
                                                        restOfContact)  
                    //add to curretCharacter's Map
                    addWord(Node(contacts.characters + (curretCharacter -> branchTopNode), false), 
                            restOfContact)
                }
            case Nil => contacts
    }

    def buildWordBranch(branchTopNode: Node, 
                        previousNode: Node, 
                        previouskey: Char,
                        restOfContact: List[Char]): Node = restOfContact match {
        case head :: tail => 
            if(previousNode.characters.contains(head)) buildWordBranch(branchTopNode, previousNode, head, tail)
            else {
                val newNode = (head -> Node(Map.empty, false))
                val parentUpdated = (previouskey -> Node(previousNode.characters + newNode, previousNode.isCompleteWord))
                
                buildWordBranch(branchTopNode.characters + parentUpdated, 
                                newNode, 
                                head,
                                tail)

                //current new Node with character 
                    //add to branchTopNode
            }
        case Nil => branchTopNode
    }

    def main(args: Array[String]) {
        val stdin = scala.io.StdIn

        val n = stdin.readLine.trim.toInt

        for (nItr <- 1 to n) {
            val opContact = stdin.readLine.split(" ")

            val op = opContact(0)

            val contact = opContact(1)

            if(op == "add"){
                addWord(contact.toList)
            }
            else {
                /*val totalFound = findPartial(contact)
                println(totalFound)*/
            }
        }
    }
}
