with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure Analisis_Notas is
   type T_Array is array (1..15) of Integer;
   Notas: T_Array := (7, 4, 9, 6, 8, 4, 10, 5, 7, 9, 3, 8, 6, 10, 5);

   operation: Integer;

   function Media(A : in T_Array) return Float is
      sum: Integer := 0;
   begin
      for i in A'Range loop
         sum := sum + A(i);
      end loop;

      return Float(sum) / Float(A'Length);
   end Media;


   function MayorRacha(A : in T_Array) return Integer is
      streak, max_streak: integer := 0;
   begin
      for i in A'Range loop
         if (A(i) >= 5) then
            streak := streak + 1;
            
            if (streak > max_streak) then
               max_streak := streak;
            end if;
         else
            streak := 0;
         end if;
      end loop;
      
      return max_streak;
   end MayorRacha;


   procedure EliminarSuspensos(A: in out T_Array) is
      i : Integer := A'First;
      n : Integer := A'Last;
   begin
      while i <= n loop
         if A(i) < 5 then
            for j in i .. n - 1 loop
               A(j) := A(j + 1);
            end loop;

            A(n) := 0;
            n := n - 1;
         else
            i := i + 1;
         end if;
      end loop;
   end EliminarSuspensos;
begin
   Put_Line("PORTAL DE NOTAS");
   Put_Line("Escribe un numero para realizar una de las siguientes operaciones:");
   Put_Line("  0. Calcular media");
   Put_Line("  1. Calcular racha de aprobados");
   Put_Line("  2. Eliminar suspensos");

   while (True) loop
      Get(operation);

      if (operation = 0) then
         Put("MEDIA: "); Put(media(Notas), 1, 2, 0);
         New_Line;
      elsif (operation = 1) then
         Put("RACHA DE APROBADOS:" & Integer'Image(MayorRacha(Notas)));
         New_Line;
      elsif (operation = 2) then
         Put("NOTAS SIN SUSPENSOS:");
         EliminarSuspensos(Notas);

         for i in Notas'Range loop
            if (Notas(1) = 0) then
               Put("Ninguna nota aquí.");
               exit;
            end if;

            if (Notas(i) /= 0) then
               Put(Integer'Image(Notas(i)) & ",");
            end if;
         end loop;
         New_Line;
      else
         Put_Line("Operación incorrecta, introduce 0, 1 o 2");
      end if;
   end loop;
end Analisis_Notas;