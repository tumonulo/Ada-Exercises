function pertsonaia_mota(adimena, indarra: in Natural) return Character is
   pertsonaia_mota: Character := 'X';

   function is_in_range(n, z1, z2: in Natural) return boolean is
   begin
      return n >= z1 and then n <= z2;
   end is_in_range;
begin
   if (adimena < 3) then
      if (indarra > 10) then
         pertsonaia_mota := 'B';
      end if;
   elsif (is_in_range(adimena, 3, 5)) then
      if (is_in_range(indarra, 7, 10)) then
         pertsonaia_mota := 'G';
      end if;
   elsif (is_in_range(adimena, 7, 10)) then
      if (is_in_range(indarra, 3, 5)) then
         pertsonaia_mota := 'E';
      end if;
   elsif (adimena > 10) then
      if (indarra < 3) then
         pertsonaia_mota := 'M';
      end if;
   end if;

   return pertsonaia_mota;
end pertsonaia_mota;