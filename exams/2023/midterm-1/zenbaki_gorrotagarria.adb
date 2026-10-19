function Zenbaki_gorrotagarria(N : Natural) return Boolean is
   lag: Natural := N;
   batekoak: Natural := 0;
   emaitza: Boolean := true;
begin
   while lag > 0 loop
      if (lag mod 2 = 1) then
         batekoak := batekoak + 1;
      end if;

      lag := lag / 2;
   end loop;

   if (batekoak rem 2 = 0) then
      emaitza := false;
   end if;

   return emaitza;
end Zenbaki_gorrotagarria;