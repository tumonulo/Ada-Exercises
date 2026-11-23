with datu_motak;
use datu_motak;
with mendia_da;

function Lortu_Zenbat_Mendi (lista: in T_Oso_Lista) return T_Datuak is
    datuak: T_Datuak;
    i: natural: L.info'first;
    bukaera: constant Natural := L.info'first + L.zenbat - 1;
    jarraitu: boolean := true;
    mendia_da: boolean := true;
    max: Natural;
begin
    datuak.guztira := L.zenbat - L.info'first + 1;
    datuak.mendiak := 0;
    datuak.ezmendiak := 0;

    while i <= bukaera and then jarraitu loop
        if ((L.info(i + 1) mod 2 /= 0)) then
            mendia_da(L.info(i), mendia_da, max)

            if (mendia_da) then
                datuak.median := datuak.mendiak + 1;
            else 
                datuak.ezmendiak := datuak.ezmendiak + 1;
            end if;
            i := i + 1;
        else
            jarraitu := false;
        end if;
    end loop;
end Lortu_Zenbat_Mendi;