//
//  ShapeList.cpp
//  Lab4
//
//  Created by Tarek Abdelrahman on 2020-10-25.
//  Copyright © 2020 Tarek Abdelrahman.
//
//  Permission is hereby granted to use this code in ECE244 at
//  the University of Toronto. It is prohibited to distribute
//  this code, either publicly or to third parties.

//  ECE244 Student:
//  Write the implementation (and only the implementation) of the ShapeList class below

#include "ShapeList.h"



ShapeList::ShapeList()                         // sets head to nullptr
{
	head = nullptr;
}









ShapeList::~ShapeList()                        // deletes all list nodes starting with head plus associated Shapes
{
	// traverse list, deleting each node
	ShapeNode* auxptr;
	while (head != nullptr)
	{
		auxptr = head;
		head = auxptr->getNext();
		delete auxptr;
	}
}









ShapeNode* ShapeList::getHead() const          // returns the head pointer
{
	return head;
}


void ShapeList::setHead(ShapeNode* ptr)        // sets the head pointer to ptr
{
	head = ptr;
}








ShapeNode* ShapeList::find(const string& name) const  // finds a shape node with the specified shape name
// returns a pointer to the node if found, otherwise
// returns nullptr if the node is not found
{
	// traverse list and try to find node with specific name
	ShapeNode* auxptr = head;
	while (auxptr != nullptr)
	{
		if (auxptr->getShape()->getName() == name) return auxptr;
		auxptr = auxptr->getNext();
	}
	return nullptr;
}








void ShapeList::insert(ShapeNode* s)           // inserts the node pointed to by s at the end of the list; s should never be nullptr
{
	// insert at tail
	ShapeNode* auxptr = head;
	if (auxptr == nullptr) //if list is empty
	{
		head = s;
		s->setNext(nullptr);
		return;
	}
	//if list is not empty
	while (auxptr != nullptr)
	{
		if (auxptr->getNext() == nullptr)
		{
			auxptr->setNext(s);
			s->setNext(nullptr);
			return;
		}
		auxptr = auxptr->getNext();
	}
}











ShapeNode* ShapeList::remove(const string& name)     // removes the node with the shape called name
// returns a pointer to the removed node (since it will be moved to the pool group) or nullptr if a node with name does not exist
{
	ShapeNode* auxptr = head;
	ShapeNode* prevptr = nullptr;

	//if list is empty, node with name 'name' DNE
	if (head == nullptr) return nullptr;

	while (auxptr != nullptr)
	{
		if (auxptr->getShape()->getName() == name)
		{
			//if node with name 'name' is the first node
			if (auxptr == head)
			{
				head = head->getNext(); //TODO: try changing this to head->setNext(head->getNext()) later and see if it works too
				return auxptr;
			}
			//TODO: only remove ShapeNode in Parser.cpp if this method, ShapeList::remove(), does not return nullptr

			//link prev node and next node together
			prevptr = auxptr->getNext();

			auxptr->setNext(nullptr);
			return auxptr;
		}
		//if current node does not have name 'name'
		prevptr = auxptr; //increment prevptr where auxptr is
		auxptr = auxptr->getNext(); //increment auxptr to point to next node
	}
	return nullptr;
}










void ShapeList::print() const                  // prints the list
{
	// traverse list and visit each ShapeNode, printing "name: type loc1 loc2 size1 size2"
	ShapeNode* auxptr = head;
	while (auxptr != nullptr)
	{
		auxptr->getShape()->draw();
		auxptr = auxptr->getNext();
	}
}
