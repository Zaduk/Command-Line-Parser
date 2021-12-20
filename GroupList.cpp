#include "GroupList.h"
#include "ShapeList.h"
#include "GroupNode.h"
#include "ShapeNode.h"

GroupList::GroupList()                       // sets head to nullptr
{
	head = nullptr;
}
GroupList::~GroupList()
{
	// deletes all list nodes, including all the ShapeList attached to each GroupNode
	GroupNode* auxptr;
	while (head != nullptr)
	{
		auxptr = head;
		head = auxptr->getNext();
		delete auxptr;
	}
}

GroupNode* GroupList::getHead() const        // returns the head pointer
{
	return head;
}

void GroupList::setHead(GroupNode* ptr)      // sets the head pointer to ptr
{
	head = ptr;
}


void GroupList::insert(GroupNode* s)        // inserts the node pointed to by s at the end of the list
{
	// insert GroupNode s at tail
	GroupNode* auxptr = head;
	if (head == nullptr)
	{
		head = s;
		s->setNext(nullptr);
	}
	while (auxptr != nullptr)
	{
		if (auxptr->getNext() == nullptr) //if next node points to null
		{
			auxptr->setNext(s); //insert s
			s->setNext(nullptr);
		}
		auxptr = auxptr->getNext();
	}
}


GroupNode* GroupList::remove(const string& name)    // removes the group node with the name "name" from the list
// and returns a pointer to the removed GroupNode
// returns nullptr if name is not found on list
{
	//delete GroupNode with name 'name', which means also deleting the ShapeList attached to it
	GroupNode* auxptr = head;
	GroupNode* prevptr = nullptr;

	//if list is empty, node with name 'name' DNE
	if (head == nullptr) return nullptr;

	while (auxptr != nullptr)
	{
		if (auxptr->getName() == name)
		{
			//if node with name 'name' is the first node
			if (auxptr == head)
			{
				head = head->getNext(); //TODO: try changing this to head->setNext(head->getNext()) later and see if it works too
				return auxptr;
			}
			//link prev node and next node together
			prevptr->setNext(auxptr->getNext()); //make prevptr point to the node after node we're removing
		}
		prevptr = auxptr;
		auxptr = auxptr->getNext();
	}
	return nullptr;
}


void GroupList::print() const                // prints the list, one GroupNode at a time
{
	//traverse list and visit nodes, printing their names
	GroupNode* auxptr = head;
	while (head != nullptr)
	{
		cout << auxptr->getName() << endl;
		auxptr = auxptr->getNext();
	}
}




