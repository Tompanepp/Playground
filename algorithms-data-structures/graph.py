class Graph(object):
    nodes = []
    def __init__(self, size):
        self.nodes = [size]

    def add_node(self, node):
        self.nodes.append(node)

class Node(object):
    nodes = []
    value = 0
    def __init__(self, value):
        self.value = value

    def add_neighbour(self, node):
        self.nodes.append(node)

    def __str__(self):
        map(print(""), self.nodes) 

def main(): 
    house_hold_count = 11
    town = Graph(house_hold_count)
    houses = []
    for i in range(0, house_hold_count):
        if i < house_hold_count - 1:
            node = Node(i)
            node.add_neighbour(i+1)
            node.add_neighbour(i-1)
            houses.append(node)

    print(town)

if __name__ == "__main__":
    main()