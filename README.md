# Common Ada Errors
This repository demonstrates common errors encountered when programming in Ada, specifically focusing on index out of bounds exceptions and uninitialized variables.  The `bug.ada` file contains code exhibiting these errors, while `bugSolution.ada` provides corrected versions.

## Errors Addressed

* **Index Out of Bounds:** Accessing array elements outside the defined range, resulting in a `CONSTRAINT_ERROR` exception.
* **Uninitialized Variables:** Using variables without assigning them initial values.  While Ada often initializes numeric types to 0, relying on this behavior isn't best practice.

## Running the Code

You'll need an Ada compiler (like GNAT) to compile and run the code.  The typical compilation process involves using a compiler's command-line interface or an IDE.
