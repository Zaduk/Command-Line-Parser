#ifndef Shape_h
#define Shape_h

#include <iostream>
#include <string>
using namespace std;

// This class represents a shape in the program
// It stores the name, type, location and size
// of the shape

class Shape {
private:
    string name;                   // The name of the shape
    string type;                   // The type of the shape (see globals.h)
    int x_location;                // The location of the shape on the x-axis
    int y_location;                // The location of the shape on the y-axis
    int x_size;                    // The size of the shape in the x-dimension
    int y_size;                    // The size of the shape in the y-dimension
public:
    // Build a Shape object with its properties
    Shape(string n, string t, int x_loc, int y_loc, int x_sz, int y_sz);
    
    // Accessors
    string getType();              // Returns the type
    string getName();              // Returns the name of the shape
    int getXlocation() const;            // Returns location of the shape on the x-axis
    int getYlocation() const;            // Returns location of the shape on the y-axis
    int getXsize() const;                // Returns the size of the shape in the x-dimension
    int getYsize() const;                // Returns the size of the shape in the y-dimension
    
    // Mutators
    void setType(string t);        // Sets the type (see globals.h)
                                   // No error checking done inside the method
                                   // The calling program must ensure the type
                                   // is correct
    void setName(string n);        // Sets the name of the shape
    void setXlocation(int x_loc);  // Sets location of the shape on the x-axis
    void setYlocation(int y_loc);  // Sets location of the shape on the y-axis
    void setXsize(int x_sz);       // Sets size of the shape in the x-dimension
    void setYsize(int y_sz);       // Sets size of the shape in the y-dimension
    
    // Utility methods
    void draw();                   // Draws a shape; for this assignment it
                                   // only prints the information of the shape
};

#endif /* Shape_h */


