procedure zenbaki_gaiztoa(N: in integer; gaiztoa: out boolean; bateko_kopurua: out integer) is
   Lag: Integer := N;
   i: Integer := 0;
begin
   while lag > 0 loop
      if (lag mod 2 = 1) then
         i := i + 1;
      end if;

      lag := lag / 2;
   end loop;

   if (i mod 2 = 0) then
      gaiztoa := true;
      bateko_kopurua := i;
   else
      gaiztoa := False;
      bateko_kopurua := -1;
   end if;
end zenbaki_gaiztoa;