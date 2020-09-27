//Praise P Tompane
//2012-July-01,19:43
//NumberList class definition

#include "NumberList.h"
#include <iostream>

using namespace std;

//
// Constrcutor
//
NumberList::NumberList()
{
	head = NULL;
}

//
//appendNode function
//
void NumberList::appendNode(double num)
{
	ListNode *newNode;
	ListNode *nodePtr;
	
	newNode = new ListNode;
	newNode->value = num;
	newNode->next = NULL;
	
	if(head == NULL)
	{
		head = newNode;
	}
	else
	{
		nodePtr = head;
		
		while(nodePtr->next != NULL)
		{
			nodePtr = nodePtr->next;
		}
		
		nodePtr->next = newNode;
	}
}
void NumberList::displayList() const
{
	ListNode *nodePtr;
	nodePtr = head;
	
	while(nodePtr != NULL)//While nodePtr points to a node.(nodePtr->next) won't work as head doesn't have next.
	{
		cout << nodePtr->value<<endl;
		//nodePtr++;Not advisable,this would simple move ptr to point to next adjacent memory.NB: Linkist can be scattered in memory
		nodePtr = nodePtr->next;//Much more precise
	}
	
}
//
//insertNode Function
//
void NumberList::insertNode(double num)
{
	ListNode *nodePtr,
			 *previousPtr = NULL,
			 *newNode;
	
	newNode = new ListNode();
	newNode->value = num;
	newNode->next = NULL;
		
	if(head == NULL)
	{
		head = newNode;
	}
	else
	{
		nodePtr = head;
		
		while(nodePtr != NULL && nodePtr->value < num)
		{
		    previousPtr = nodePtr;
			nodePtr = nodePtr->next;
		}
		if(previousPtr == NULL)//Inserting into first position
		{
			head = newNode;
			newNode->next = nodePtr;
		}
		else
		{
			previousPtr->next = newNode;//Inserting into position
			newNode->next =nodePtr;//Connecting newNode to existing ListNodes
		}
		
	}
	
}

//
//deleteNode function : Deletes node with a value equal to the argument
void NumberList::deleteNode(double num)
{
	ListNode *nodePtr = head,
			 *previousPtr = NULL;
	
	while(nodePtr->value != num && nodePtr->next != NULL)
	{
		previousPtr = nodePtr;
		nodePtr = nodePtr->next;
	}
	if(nodePtr->value == num)
	{
		previousPtr->next = nodePtr;
		
		delete nodePtr;
	}
}










