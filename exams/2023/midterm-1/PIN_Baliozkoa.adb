with Zenbat_digitu, Igarren_digitua;

procedure PIN_Baliozkoa (N: in Natural; Da: out Boolean; Baldintzak: out Natural) is
   length, digitua: Natural;
   bakoitiak, bikoitiak, batura: Natural := 0;

   function lehena_da(N : in Natural) return Boolean is
      emaitza : Boolean := True;
   begin
      if N < 2 then
         emaitza := False;
      else
         for i in 2 .. N - 1 loop
            if N mod i = 0 then
               emaitza := False;
            end if;
         end loop;
      end if;

      return emaitza;
   end lehena_da;
begin
   Zenbat_digitu (N, length);

   for i in 1..length loop
      digitua := Igarren_digitua (N, i);
      if (digitua mod 2 = 0) then
         bikoitiak := bikoitiak + 1;
      end if;

      batura := batura + digitua;
   end loop;

   bakoitiak := length - bikoitiak; -- Honek arinagoa egiten du programa, hau egiten ez badut programak elsif batean bikoitak++, length aldiz egin beharko zuen

   Baldintzak := 0;
   if (length >= 8) then
      Baldintzak := Baldintzak + 1;
   end if;
   if (bakoitiak >= 3) then
      Baldintzak := Baldintzak + 1;
   end if;
   if (bikoitiak >= 3) then
      Baldintzak := Baldintzak + 1;
   end if;
   if (lehena_da(batura)) then
      Baldintzak := Baldintzak + 1;
   end if;

   Da := Baldintzak = 4;
end PIN_Baliozkoa;