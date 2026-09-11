with Ada.Text_IO, Ada.Float_Text_IO; use Ada.Text_IO, Ada.Float_Text_IO;

procedure Prezio_Baxuena is
   P1, P2, P3 : Float;

   procedure Log_Prezio_Baxuena (N1, N2 : Float) is
   begin
      Put ("Prezio baxuena: ");
      Put (N1 + N2, 1, 2, 0);
   end Log_Prezio_Baxuena;
begin
   Put ("Sartu lehenengo pelikularen prezioa: ");
   Get (P1);

   Put ("Sartu bigarren pelikularen prezioa: ");
   Get (P2);

   Put ("Sartu hirugarren pelikularen prezioa: ");
   Get (P3);

   if P1 < P2 then
      if P3 < P2 then
         Log_Prezio_Baxuena (P1, P3);
      else
         Log_Prezio_Baxuena (P1, P2);
      end if;
   else
      if P3 < P1 then
         Log_Prezio_Baxuena (P2, P3);
      else
         Log_Prezio_Baxuena (P2, P1);
      end if;
   end if;
end Prezio_Baxuena;