```ada
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   A : My_Array := (others => 0); -- Initialize array
begin
   for I in A'Range loop
      A(I) := A(I) + 1; -- Accessing array elements
   end loop;
   for I in A'Range loop
      Ada.Text_IO.Put_Line(Integer'Image(A(I)));
   end loop;
   -- Safe way to handle potential out of bound access:
   declare
      Safe_Index : Integer := 5; 
   begin
     if Safe_Index in A'Range then
       Ada.Text_IO.Put_Line(Integer'Image(A(Safe_Index)));
     else
       Ada.Text_IO.Put_Line("Index out of range");
     end if;
   end;
   
exception
   when others =>
      Ada.Text_IO.Put_Line("An unexpected error occurred!");
end Example_Solution;
```