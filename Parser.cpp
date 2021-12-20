#include <iostream>
#include <sstream>
#include <string>

using namespace std;

#include "globals.h"
#include "Shape.h"
#include "ShapeNode.h"
#include "GroupNode.h"
#include "GroupList.h"

bool nameIsValid(const string&);
bool isInShapeLists(const string& name);
bool isInGroupList(const string& name);

#define NUM_KEYWORDS 6


// This is a pointer to the GroupList
// The list itself must be allocated
GroupList* gList;


int main() {

	// Allocate the GroupList
	gList = new GroupList();

	// Create the pool group and add it to the group list
	GroupNode* poolGroup = new GroupNode(keyWordsList[NUM_KEYWORDS-1]); //or just "pool"
	gList->insert(poolGroup);
	//at this point we have a GroupList with one node, pool, with no shapes in it.

	string line;
	string command;

	cout << "> ";         // Prompt for input
	getline(cin, line);    // Get a line from standard input

	while (!cin.eof())
	{
		// Put the line in a linestream for parsing
		// Making a new sstream for each line so flags etc. are cleared
		stringstream lineStream (line);

		// Read from string stream into the command
		// The only way this can fail is if the eof is encountered
		lineStream >> command;

		//for empty line of input, restart CLI prompt
		if (lineStream.eof() && command != "draw") goto restart;


		//=======================================DELETE===========================================
		// takes in: name (Shape name or Group name)


		if (command == "delete")
		{
			string name;
			lineStream >> name;
			if (nameIsValid(name))
			{
				if (name != "pool")
				{
					if (!isInShapeLists(name) && !isInGroupList(name)) {
						cout << "error: shape " << name << " not found" << endl;
						goto restart;
					}
					else
					{
						if (isInShapeLists(name)) {
							//if name is a shape, delete that shapeNode from the groupNode it is in
							//first, find Shape name in some ShapeList to fetch pointer to Shape name
							GroupNode *auxptr = gList->getHead();
							while (gList->getHead() != nullptr) {
								//look for name
								ShapeNode *nameptr = auxptr->getShapeList()->find(name);
								if (nameptr != nullptr) //if name was found in any ShapeList
								{
									//now we have nameptr pointing to name
									//now we have to remove that ShapeNode from its ShapeList
									auxptr->getShapeList()->remove(name);
									delete nameptr;
								} else //for good measure, but shouldn't execute because we've already checked for it above
								{
									cout << "error: shape " << name << " not found" << endl;
									goto restart;
								}
								auxptr = auxptr->getNext();
							}
						}
						else if (isInGroupList(name))
						{
							//if name is a group, move all the ShapeNodes from Group to pool
							//first fetch the pointer to the GroupNode we're deleting
							GroupNode *auxptr = gList->getHead();
							GroupNode *GroupNodeToDelete;
							while (auxptr != nullptr)
							{
								if (auxptr->getName() == name) //found the Group we're deleting
								{
									GroupNodeToDelete = auxptr; //fetched the pointer
									//then remove its ShapeList elements one by one and move them to pool one by one
									ShapeNode *auxptrtoShapeNode = GroupNodeToDelete->getShapeList()->getHead();
									while (auxptrtoShapeNode != nullptr) //iterate through ShapeList
									{
										GroupNodeToDelete->getShapeList()->remove(auxptrtoShapeNode->getShape()->getName()); //remove ShapeNode from group
										gList->getHead()->getShapeList()->insert(auxptrtoShapeNode); //insert ShapeNode in pool
										auxptrtoShapeNode = auxptrtoShapeNode->getNext();
									}
									// GroupNode's ShapeList should be empty now. Now delete GroupNode
									GroupNode *removedGroupNode = gList->remove(name);
									delete removedGroupNode;
								}
								auxptr = auxptr->getNext();
							}
						}
						cout << name << ": deleted"
						     << endl;
						goto restart;
					}
				}
				else
				{
					cout << "error: invalid name" << endl;
					goto restart;
				}
			}
			else
			{
				cout << "error: invalid name" << endl;
				goto restart;
			}
		}


		//=======================================DRAW===========================================
		// takes in: none


		else if (command == "draw") {
			//draw all shapes
			//traverse LL: visit and print each node's key
			cout << "drawing:" << endl;
			//traverse GroupList one node at a time, printing each ShapeNode in its ShapeList
			//before moving onto the next GroupNode
			GroupNode* auxptr = gList->getHead();
			while (auxptr != nullptr)
			{
				//print GroupNode
				cout << auxptr->getName() << ":" << endl;
				auxptr->setNext(auxptr->getNext());

				//print ShapeNodes in its ShapeList
				auxptr->getShapeList()->print();

				//increment auxptr
				auxptr = auxptr->getNext();
			}
		}

		//=======================================GROUP===========================================
		// takes in: name


		else if (command == "group")
		{
			string name;
			lineStream >> name;
			if (nameIsValid(name))
			{
				if (isInGroupList(name))
				{
					cout << "error: group " << name << " exists" << endl;
					goto restart;
				}
				else
				{
					//create new group with name 'name'
					auto* newGroupNode = new GroupNode(name);
					gList->insert(newGroupNode);
					cout << name << ": group" << endl;
					goto restart;
				}
			}
			else
			{
				cout << "error: invalid name" << endl;
				goto restart;
			}
		}


		//=======================================MOVE===========================================
		// takes in: name1 (Shape name), name2 (Group name)


		else if (command == "move")
		{
			string name1, name2;
			lineStream >> name1 >> name2;
			if (nameIsValid(name1) && (nameIsValid(name2) || name2 == "pool"))
			{
				if (!isInShapeLists(name1))// must search all ShapeLists for name1
				{
					cout << "error: shape " << name1 << " not found" << endl;
					goto restart;
				}
				if (!isInGroupList(name2)) //must search all GroupNodes for name2
				{
					cout << "error: group " << name2 << " not found" << endl;
					goto restart;
				}
				//move shape

				//first, find Shape name1 in some ShapeList to fetch pointer to Shape name1
				GroupNode* auxptr = gList->getHead();

				while (auxptr != nullptr) //iterate through GroupList and look for Shape name1
				{
					ShapeNode* name1ptr = auxptr->getShapeList()->remove(name1);
					name1ptr->print();
					cout << endl;
					if (name1ptr != nullptr) //if name1 was found in current ShapeList
					{
						//now we have removed name1ptr from its ShapeList
						//now we have to add name1ptr to GroupNode name2's ShapeList
						// finding GroupNode 'name2' and insert name1ptr there
						GroupNode* auxptr2 = gList->getHead();
						while (auxptr2 != nullptr)
						{
							if (auxptr2->getName() == name2) //if we find GroupNode name2
							{
								auxptr2->getShapeList()->insert(name1ptr); //insert name1
								goto restart;
							}
							auxptr2 = auxptr2->getNext();
						}
					}
					auxptr = auxptr->getNext();
				}

				cout << "moved " << name1 << " to " << name2 << endl;
				goto restart;
			}
			//shape name is invalid
			else
			{
				cout << "error: invalid name" << endl;
				goto restart;
			}
		}

		//=======================================SHAPE===========================================
		// takes in: name, type, loc, loc, size, size


		else if (command == "shape")
		{
			string name;
			lineStream >> name;
			if (nameIsValid(name))
			{
				if (isInShapeLists(name))
				{
					cout << "error: shape " << name << " exists" << endl;
					goto restart;
				}
				string type;
				lineStream >> type;
				int loc1, loc2, size1, size2;
				lineStream >> loc1 >> loc2 >> size1 >> size2;

				//create shape object based on the specifications
				auto* newShape = new Shape(name, type, loc1, loc2, size1, size2);

				//create a newShapeNode ShapeNode object which will point to newShape
				auto* newShapeNode = new ShapeNode();
				newShapeNode->setShape(newShape);

				// since we already have a ShapeList from when we first created the poolGroup,
				// we don't need to create another one. Insert newShapeNode at pool's ShapeList's tail:
				gList->getHead()->getShapeList()->insert(newShapeNode);
				//now we have created a Shape object and put it into poolGroup

				cout << name << ": " << type << " " << loc1 << " " << loc2 << " " << size1 << " " << size2
				     << endl;
				goto restart;
			}
			else
			{
				cout << "error: invalid name" << endl;
				goto restart;
			}
		}

		restart:

		// Once the command has been processed, prompt for the next command
		cout << "> ";          // Prompt for input
		getline(cin, line);
	} // End input loop until EOF.

	//delete entire list upon program exit

	// GroupNode* groupNodeptr = gList->getHead();
	// ShapeNode* shapeNodeptr = nullptr;

	// //part 1: deleting shapeLists
	// //traverse groupList and delete every shapeNode in every groupNode's ShapeList
	// while (groupNodeptr != nullptr)
	// {
	// 	shapeNodeptr = groupNodeptr->getShapeList()->getHead();
	// 	//traverse shapeList and delete every node
	// 	while (shapeNodeptr != nullptr)
	// 	{
	// 		ShapeNode* victim = shapeNodeptr;
	// 		shapeNodeptr = shapeNodeptr->getNext();
	// 		delete victim;
	// 	}
	// 	groupNodeptr = groupNodeptr->getNext();
	// }
	//part 2: deleting groupList itself
	// GroupNode* GNptr = gList->getHead();
	// while (GNptr != nullptr)
	// {
	// 	GroupNode* victim_ = GNptr;
	// 	GNptr = GNptr->getNext();
	// 	delete victim_;
	// }

	// delete gList;
	return 0;
}



//helper functions


bool nameIsValid(const string& name)
{
	for (auto & i : shapeTypesList)
		//if name belongs to the names list, return false
		if (name == i) return false;
	for (int i = 0; i < 5; i++)
		//if command belongs to accepted commands list, return true
		if (keyWordsList[i] == name) return false;
	//name does NOT belong to the shapes names nor command names, thus valid, and return true
	return true;
}

//returns true if queried name is in any ShapeList, false otherwise
bool isInShapeLists(const string& name)
{
	GroupNode* auxptr = gList->getHead();
	while (auxptr != nullptr) //infinite loop?
	{
		if (auxptr->getShapeList()->find(name)) return true;
		auxptr = auxptr->getNext();
	}
	return false;
}

//returns true if queried name is in GroupList, false otherwise
bool isInGroupList(const string& name)
{
	GroupNode* auxptr = gList->getHead();
	while (auxptr != nullptr)
	{
		if (auxptr->getName() == name) return true;
		auxptr = auxptr->getNext();
	}
	return false;
}
