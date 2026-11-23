package datu_motak_2 is
    Anomalia_Kop_Max: constant Integer := 10;
    Eskaner_Tamaina_Max: constant Integer := 1000;
    subtype T_edukia is Integer range 0..1;
    subtype T_sakonera is Integer range 0..3;
    type T_Kontrol is record
    Edukia : T_edukia; -- 0 ‘normala’, 1 ‘arraroa
    Sakonera : T_sakonera; -- 0 ‘normala’, 1, 2 edo 3 ‘arraroa’rentzat
    end record;
    -- eskaneatze baten emaitza gordetzeko
    type T_eskaner is array (Positive range <>, Positive range <>) of T_Kontrol;
    type T_Anomalia_Deskribatzaile is record
    Errenk : Integer;
    Zutabe : Integer;
    Luzera : Natural;
    Batezbesteko_sakonera : Float;
    end record;
    type T_Anomalia_Bek is array (Positive range <>) of T_Anomalia_Deskribatzaile;
end datu_motak_2;