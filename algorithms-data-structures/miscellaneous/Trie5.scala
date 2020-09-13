import scala.collection.mutable.Map

class Trie {

    case class TrieNode(var characters: Map[Char, TrieNode],
                        isEndOfWord: Boolean)

    val emptyTrieNode = TrieNode(Map.empty, false)

    private val root = emptyTrieNode

    def insert(word: String): Unit = {
        insertRecursive(root, word.toList)
    }

    private def insertRecursive(current: TrieNode, characters: List[Char]): Unit = characters match {
        case head :: tail if(!current.characters.contains(head)) => 
            val nextNode = emptyTrieNode
            current.characters.put(head, nextNode)
            insertRecursive(nextNode, tail)
        case head :: tail if(current.characters.contains(head)) => insertRecursive(current, tail)
        case head :: Nil =>
            val nextNode = emptyTrieNode.copy(isEndOfWord = true)
            current.characters.put(head, nextNode)
            insertRecursive(nextNode, Nil)
        case Nil => ()
    }


    def countContactsWithPartial(partial: String): Int = {
        findPartial(root: TrieNode, partial.toList) match {
            case None => 0
            case Some(partialsLastNode) => countSubWords(0, partialsLastNode)
        }
        
    }

    private def countSubWords(total: Int, current: TrieNode): Int = current.characters.toList match {  
        case head :: tail => current.characters.map(c => if(c._2.isEndOfWord) 1 else 0).sum
        case Nil => total
        /*
                checkForCompleteWord
                    Foreach Node
                        if isEndOfWord
                            increment total
                            checkChildren
                        else
                            no total increment
                            checkChildren

                checkChildren = checkForCompleteWord()
        */
    }
    
    private def findPartial(current: TrieNode, characters: List[Char]): Option[TrieNode] = 
    characters match {
        case head :: tail if(current.characters.contains(head)) => findPartial(current, tail)
        case head :: tail if(!current.characters.contains(head)) => None
        case Nil => Some(current) // TODO Does this mean I found all the characters?
    }
    
    //throws stack overflow, good puzzle to figure out why
    override def toString(): String = {
        println("Printing characters in contacts")
        root.characters.map(c => c._1).mkString
    }
}

object Main {
    def main(args: Array[String]) {
            val stdin = scala.io.StdIn            
            val contacts = new Trie()
            val words = List("hack", "hackos", "hackos", "hackers", "hacking", "hackerrank")
            words.foreach(w => contacts.insert(w))

            contacts.toString()
            println(contacts.countContactsWithPartial("hac"))

            /*
            val n = stdin.readLine.trim.toInt

            val opContact = stdin.readLine.split(" ")
            
            val op = "add"

            val contact = "Pr"

            
            if(op == "add"){
                contacts.insert(contact)
                println(contacts)
            }
            else {
                val totalFound = findPartial(contact)
                println(totalFound)
            }*/
    }
}