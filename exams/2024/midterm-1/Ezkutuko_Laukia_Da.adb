with Zenbat_digitu, Igarren_digitua;

function Ezkutuko_Laukia_da (N: in Natural) return Boolean is
   Total_Digituak : Natural;
   K              : Natural;
   Fila           : Natural;
   Columna        : Natural;
   Eskuin_Hasiera : Natural;
   Emaitza        : Boolean := True;
begin
   -- 1. Digitu kopurua lortu
   Zenbat_digitu(N, Total_Digituak);

   -- Gutxienez 4 digitu eta digitu kopuru bikoitia
   if Total_Digituak < 4 or else (Total_Digituak mod 2 /= 0) then
      Emaitza := False;
   else
      K := (Total_Digituak - 2) / 2;

      -- 2. Ezkerraldeko 9ak egiaztatu
      for I in 1 .. K loop
         if Igarren_digitua(N, I) /= 9 then
            Emaitza := False;
         end if;
      end loop;

      -- 3. Eskuinandeko 9ak egiaztatu
      Eskuin_Hasiera := Total_Digituak - K + 1;
      for I in Eskuin_Hasiera .. Total_Digituak loop
         if Igarren_digitua(N, I) /= 9 then
            Emaitza := False;
         end if;
      end loop;

      -- 4. Xake-taulako laukia dela egiaztatu (1 eta 8 artean)
      Fila    := Igarren_digitua(N, K + 1);
      Columna := Igarren_digitua(N, K + 2);

      if Fila < 1 or Fila > 8 or Columna < 1 or Columna > 8 then
         Emaitza := False;
      end if;
   end if;

   return Emaitza;
end Ezkutuko_Laukia_da;