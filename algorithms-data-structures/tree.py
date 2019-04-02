'''
    binary treee
    zero, one or two children
    if node has two children:
        one child has value greater than parent's value
        one child has value less than parent's value
'''
class Node:
    def __init__(self, val, leftchild = None, rightchild = None):
        self.val = val
        self._leftchild = leftchild
        self._rightchild = rightchild

class BinaryTree:
    def __init__(self, root):
        self._root = root
    #O(log N)
    def search(self, value):
        def _search(node):
            if not node: return None
            elif node.val == value: return node
            elif value < node.val: return _search(node._leftchild)
            elif value > node.val: return _search(node._rightchild)
        return _search(self._root)

node52 = Node(52)
node61 = Node(61)
node56 = Node(56, node52, node61)

node82 = Node(82)
node95 = Node(95)
node89 = Node(89, node82, node95)

node30 = Node(30)
node40 = Node(40)
node33 = Node(33, node30, node40)

node4 = Node(4)
node11 = Node(11)
node10 = Node(10, node4, node11)

node25 = Node(25, node10, node33)
node75 = Node(75, node56, node89)
root = Node(50, node25, node25)

tree = BinaryTree(root)
print tree.search(11).val