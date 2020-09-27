//My implementation of a heap
//2012-12-15/ 02:46:44
//P. Praise Tompane

//Psuedo
/*
	Node struct{
	
		value
		3 pointers
		-head
		-leftChild
		-rightChild
	}
	
	void upheap(int value){
	
		Go to right of rightChild.
		Compare head-value and value.
		
		while(head != NULL),then
			if(value < head-value )
				swap head-value and value.
			else
				return;
	}
	void downheap(int value){
	
		Go to the node
		if(leftChild != NULL )
			if(leftChild-value < value)
				swap leftChild-value and head-value.
		if(rightChild != NULL)
			if(rightChild-value < head-value)
				swap leftChild-value and value.
	
	}
*/ 

