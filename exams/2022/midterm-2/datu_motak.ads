package datu_motak is
    type T_Oso_Bektore is array (1..100) of Integer;
    subtype ListaMuga is Integer range 0..100;
    type T_Oso_Lista is record
    info: T_Oso_Bektore;
    zenbat: ListaMuga;
    end record;
    type T_Datuak is record
    guztira : Integer;
    mendiak : Integer;
    ezmendiak : Integer;
    end record;
end datu_motak;