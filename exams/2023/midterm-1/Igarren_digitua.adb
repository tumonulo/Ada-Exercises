function Igarren_digitua (Zbkia: in Integer; I: in Positive) return Natural is
   lag: Integer := Zbkia;
   reversed_lag: Integer := 0;
begin
   while lag > 0 loop
      reversed_lag := reversed_lag * 10 + lag mod 10;

      lag := lag / 10;
   end loop;

   if I > 1 then
      for x in 1 .. I - 1 loop
         reversed_lag := reversed_lag / 10;
      end loop;
   end if;

   return reversed_lag mod 10;
end Igarren_digitua;