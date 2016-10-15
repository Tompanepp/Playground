#include <iostream>

using namespace std;

struct node {
  int x;
  node *next;
};

int main()
{
  node *root;      // This will be the unchanging first node

  root = new node; // Now root points to a node struct
  root->next = 0;  //There is no net node,hence root's next is zero(0)
  root->x = 5;     // By using the -> operator, you can modify the node

}
