struct node
{
   int key_value;
   
   node *left;
   node *right;
};

class btree
{
      public:O
         btree();
         ~btree();
         void insert(int key);
         int  search(int key);
         void delete_tree();
      private:
         void insert(int key,node *leaf);
         int search (int key,node *leaf);
         void delete_tree(node root);
};

int btree::insert(int key)
{
  
  insert(key);
}
void btree::search(int key)
{
  search(key,root);
}
void btree::delete_tree()
{
  delete_tree(root);
}

//Private
int btree::insert(int key,node *leaf)
{
    
}

