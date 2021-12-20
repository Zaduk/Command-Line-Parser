#include "ShapeList.h"
#include "GroupNode.h"

#include <utility>

// This class implements a node in the GroupList.
// Each GroupNode has the name of the group,
// a pointer to a ShapeList and a pointer to the
// next node in the list


GroupNode::GroupNode(string n)                    // sets group name to n and makes myShapeList
{
	name = n;
	myShapeList = new ShapeList();
	next = nullptr;
}







// point to a new ShapeList; sets next to nullptr
GroupNode::~GroupNode()                           // deletes the myShapeList list
{
	delete myShapeList;
	delete next;
}









string GroupNode::getName() const                 // returns group name
{
	return name;
}
ShapeList* GroupNode::getShapeList() const        // returns myShapeList
{
	return myShapeList;
}
void GroupNode::setShapeList(ShapeList* ptr)      // sets myShapeList to ptr
{
	myShapeList = ptr;
}
GroupNode* GroupNode::getNext() const             // returns next
{
	return next;
}
void GroupNode::setNext(GroupNode* ptr)           // sets next to ptr
{
	next = ptr;
}
void GroupNode::print() const                     // prints the GroupNode
{
	cout << name << ":" << endl;
}



