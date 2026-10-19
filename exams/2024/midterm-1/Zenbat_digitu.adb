procedure Zenbat_digitu (N: in Integer; digituak: out Natural) is
   lag: Integer := N;
begin
   digituak := 0;

   if (lag = 0) then
      digituak := 1;
   else
      while lag > 0 loop
         digituak := digituak + 1;
         lag := lag / 10;
      end loop;
   end if;

   -- digituak := Integer'Image(N)'Length - 1 ere erabili daitezke
end Zenbat_Digitu;