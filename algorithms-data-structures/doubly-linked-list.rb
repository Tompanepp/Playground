class Node
    attr_accessor :next_node, :previous_node, :data
    
    def initialize(data)
        @data = data
    end
end

class DoublyLinkedList
    attr_accessor :first_node, :last_node
    def initialize(first_node, last_node)
        @first_node = first_node
        @last_node = last_node
    end
    def insert_at_end(value)
        new_node = Node.new(value)
        @last_node.next_node = new_node
        new_node.previous_node = @last_node
    end
    def print()
        _print(@first_node)
    end
    private def _print(current_node)
        if(!current_node)
            return 
        end
        puts current_node.data
        _print(current_node.next_node)
    end
end


#Testing

#usage
node1 = Node.new(1)
#"linking" node1 to node2
node2 = Node.new(2)
node1.next_node = node2

node3 = Node.new(3)
node2.next_node = node3

node4 = Node.new(4)
node3.next_node = node4

linkedlist = DoublyLinkedList.new(node1, node4)
linkedlist.print()

puts "inserting at the end"
linkedlist.insert_at_end(5)
linkedlist.print()