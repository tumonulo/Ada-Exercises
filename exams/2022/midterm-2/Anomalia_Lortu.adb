with datu_motak_2;
use datu_motak_2;
with Anomaliaren_Hasiera_Lortu;

procedure Anomalia_Lortu (esk: in T_Eskaner; i, j: in out Natural; luzera: out Natural; sakonera: out Float) is
    jarraitu: boolean := true;
begin
    Anomaliaren_Hasiera_Lortu(esk, i, j)

    luzera := 0;
    sakonera := 0;

    if (i /= 0 and then j /= 0) then
        while jarraitu and then j <= esk'length(j) loop
            
            i := esk'first(1)
            while jarraitu and then i <= esk'length(1) loop
                if (esk(i, j).edukia = 1) then
                    luzera := luzera + 1;
                    sakonera := sakonera + Float(esk(i, j).sakonera)
                    i := i + 1;
                else
                    jarraitu := false;
                end if;
            end loop;

            j := j + 1;
        end loop:

        sakonera := sakonera / Float(luzera);
    end if; 
end Anomaliaren_Hasiera_Lortu;