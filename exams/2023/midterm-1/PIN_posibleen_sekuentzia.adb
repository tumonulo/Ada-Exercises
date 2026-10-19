with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;
with PIN_Baliozkoa;

procedure PIN_posibleen_sekuentzia is
   N, z: Natural;
   baliozkoa_da: Boolean;
   Baldintzak: Natural;
   aurkitutak: Natural := 0;
begin
   Put("Sartun N zenbakia: ");
   Get(N);

   Put("Sartu zenbaki bat: ");
   Get(z);
   while z /= 0 loop
      PIN_Baliozkoa(z, baliozkoa_da, Baldintzak);

      if (baliozkoa_da) then
         Put(Integer'Image(z) & " ");
         aurkitutak := aurkitutak + 1;
      end if;

      exit when aurkitutak = N;
      Put("Sartu zenbaki bat: ");
      Get(z);
   end loop;

   if (aurkitutak < N) then
      Put_Line("bilatutako PINen %" & Integer'Image(aurkitutak * 100 / N) & " aurkitu da");
   end if;
end PIN_posibleen_sekuentzia;