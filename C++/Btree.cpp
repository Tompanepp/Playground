#include "Btree.h"
#include <cstring>
//Inorder to make node accessible to class Btree
/*struct node
{
  int key_value;
  node *left;
  node *right;
};*/
//Constructor

Btree::Btree() {
    root = NULL;
}
//Desstructor

Btree::~Btree() {
    destroy_tree();
}

//Insert func
//Public

void Btree::insert(int key) {
    if (root != NULL)
        insert(key, root);
    else {
        root = new node;
        root->key_value = key;
        root->left = NULL;
        root->right = NULL;
    }
}
//Private

void Btree::insert(int key, node *leaf) {
    if (key < leaf->key_value) {
        if (leaf->left != NULL)
            insert(key, leaf->left);
        else {
            leaf->left = new node;
            leaf->left->key_value = key;
            leaf->left->left = NULL; //Sets the left child of the child node to null
            leaf->left->right = NULL; //Sets the right child of the child node to null
        }
    } else if (key >= leaf->key_value) {
        if (leaf->right != NULL)
            insert(key, leaf->right);
        else {
            leaf->right = new node;
            leaf->right->key_value = key;
            leaf->right->left = NULL; //Sets the left child of the child node to null
            leaf->right->right = NULL; //Sets the right child of the child node to null
        }
    }
}
//End insert

//Search
//Public

node *Btree::search(int key) {
    return search(key, root);
}

//Private

node *Btree::search(int key, node *leaf) {
    if (leaf != NULL) {
        if (key == leaf->key_value)
            return leaf;
        if (key < leaf->key_value)
            return search(key, leaf->left);
        else
            return search(key, leaf->right);
    } else return NULL;
}

//End of search

//Destroy function
//Pub

void Btree::destroy_tree() {
    destroy_tree(root);
}
//Private

void Btree::destroy_tree(node *leaf) {
    if (leaf != NULL) {
        destroy_tree(leaf->left);
        destroy_tree(leaf->right);
        delete leaf;
    }
}
//End of Destroy

