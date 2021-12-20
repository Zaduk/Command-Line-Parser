#include <iostream>
#include <string>
#include <utility>

using namespace std;
#include "Shape.h"



// Build a Shape object with its properties
Shape::Shape(string n, string t, int x_loc, int y_loc, int x_sz, int y_sz)
{
	name = n;
	type = t;
	x_location = x_loc;
	y_location = y_loc;
	x_size = x_sz;
	y_size = y_sz;
}

// Accessors
string Shape::getType() { return type; }
string Shape::getName() { return name; }
int Shape::getXlocation() const { return x_location; }
int Shape::getYlocation() const { return y_location; }
int Shape::getXsize() const { return x_size; }
int Shape::getYsize() const { return y_size; }

// Mutators
void Shape::setType(string t) {type = t;}
void Shape::setName(string n) {name = n;}
void Shape::setXlocation(int x_loc) {x_location = x_loc;}
void Shape::setYlocation(int y_loc) {y_location = y_loc;}
void Shape::setXsize(int x_sz) {x_size = x_sz;}
void Shape::setYsize(int y_sz) {y_size = y_sz;}

// Utility methods
void Shape::draw() {
	cout << name << ": " << type << " " << x_location << " " << y_location << " " << x_size << " " << y_size << endl;
}
// Draws a shape; for this assignment it
// only prints the information of the shape
