#include "ShapeNode.h"
#include "Shape.h"

ShapeNode::ShapeNode()                    // sets myShape and next to nullptr
{
	myShape = nullptr;
	next = nullptr;
}









ShapeNode::~ShapeNode()                   // deletes the shape pointed to by myShape
{
	delete myShape;
}












Shape* ShapeNode::getShape() const        // returns myShape
{
	return myShape;
}
void ShapeNode::setShape(Shape* ptr)      // sets myShape to ptr
{
	myShape = ptr;
}

ShapeNode* ShapeNode::getNext() const     // returns next
{
	return next;
}
void ShapeNode::setNext(ShapeNode* ptr)   // sets next to ptr
{
	next = ptr;
}
void ShapeNode::print() const             // prints myShape's name
{
	cout << myShape->getName() << endl;
}
