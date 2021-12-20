# Command-Line-Parser

This project is a command-line parser build using nested linked lists that uses the theme of Shapes to demonstrate functionality.

To compile, run `g++ -std=c++17 GroupNode.cpp GroupList.cpp Shape.cpp ShapeNode.cpp ShapeList.cpp Parser.cpp -o Parser` then run the executable to initiate the CLIO.

---

The master linked list is `GroupList` and its `GroupNode`s (representing a group) each point to slave `ShapeList`s linked lists that store the Shapes in the said group.

This CLI takes in various commands and subsequent argument:
- `shape name type xloc yloc xsize ysize`

Creates a new shape `name` of type `type` of size `xsize`x`ysize` at location (`xloc`, `yloc`).

- `group name`

Creates a new group `name`. Effectively, this creates a new node in the primary linked list, pointing to its own Shape linked list).

- `draw`

Lists all shapes in all groups.

- `move name1 name2`

Transfers shape `name1` to group `name2`.

- `delete name`

Deletes the shape or group `name`.
