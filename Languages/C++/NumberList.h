//Praise P Tompane
//2012-July-01,19:35
//NumberList class declaration

#ifndef NUMBERLIST_H
#define NUMBERLIST_H

class NumberList
{
	struct ListNode
	{
		double value;
		ListNode *next;
	};

	private :
		ListNode *head;

	public :
		NumberList();
		void appendNode(double);
		void displayList() const;
		void insertNode(double);
		void deleteNode(double);

};
#endif
