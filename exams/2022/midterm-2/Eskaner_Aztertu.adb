with datu_motak_2;
use datu_motak_2;
with Anomalia_Lortu;

function Eskaner_Aztertu (esk: in T_Eskaner) return T_Anomalia_Bek is
    anomalia_bek: T_Anomalia_Bek;
    i: Naturak := esk'first(1);
    j: Natural := esk'frist(2);
    posizioa: Positive;
    desplazatutako_j := Natural;
begin
    Anomalia_Lortu(esk, i, j, luzera, sakonera);

    while i /= 0 and then j /= 0 loop
        posizioa := Posizioa_Lortu(anomalia_bek, sakonera);

        anomalia_bek((posizioa + 1)..anomalia_bek'last) := anomalia_bek(posizioa..(anomalia_bek'last - 1))
        
        anomalia_bek(posizioa).Errenk := i;
        anomalia_bek(posizioa).Zutabe := j;
        anomalia_bek(posizioa).Luzera := luzera;
        anomalia_bek(posizioa).Batezbesteko_sakonera := sakonera;

        desplazatutako_j := (i + luzera) / esk'length(1);
        i := (i + luzera) mod (desplazatutako_j * esk'length(1))
        j := j + desplazatutako_j;

        Anomalia_Lortu(esk, i, j, luzera, sakonera);
    end loop;
end Eskaner_Aztertu;