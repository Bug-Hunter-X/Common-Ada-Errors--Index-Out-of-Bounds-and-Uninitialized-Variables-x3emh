```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   A : My_Array := (others => 0); -- Initialize array
begin
   for I in A'Range loop
      A(I) := A(I) + 1; -- Accessing array elements
   end loop;
   for I in A'Range loop
      Ada.Text_IO.Put_Line(Integer'Image(A(I)));
   end loop;
   -- Example of an error: Index out of bounds
   Ada.Text_IO.Put_Line(Integer'Image(A(11))); -- This will cause a CONSTRAINT_ERROR
exception
   when Constraint_Error =>
      Ada.Text_IO.Put_Line("Constraint Error occurred!");
end Example;
```