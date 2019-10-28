pragma Ada_2012;
package body Tokenize.Private_Token_Lists with SPARK_Mode => On is

   ------------
   -- Append --
   ------------

   procedure Append
     (List : in out Token_List;
      What : String)
   is
   begin
      if List.First_Free > List.Tokens'Last then
         raise Constraint_Error;
      end if;

      List.Tokens (List.First_Free) := To_Unbounded_String (What);
      List.First_Free := List.First_Free + 1;
   end Append;

end Tokenize.Private_Token_Lists;
