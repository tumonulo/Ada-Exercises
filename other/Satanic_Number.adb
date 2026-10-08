with Ada.Text_IO;
use Ada.Text_IO;

procedure Satanic_Number is
    Satanic_Number : String(1..1000);
    Length: Integer;

    function Is_Satanic_Number(Satanic_Number : String) return Boolean is
        I : Integer := 0;
    begin

        for J in Satanic_Number'Range loop
            if Satanic_Number(J) = '6' then
                I := I + 1;
            else
                if I = 3 then
                    return True;
                end if;
                I := 0;
            end if;
        end loop;
        if I = 3 then
            return True;
        end if;
        return False;
    end Is_Satanic_Number;
begin
    Put("Ingresa un numero para comprobar si se trata de un numero satanico: ");
    Get_Line(Satanic_Number, Length);

    if Length > 10 then
        Put_Line("El numero no puede contener más de 10 caracteres. Caracteres:" & Integer'Image(Length));
        return;
    end if;

    if Is_Satanic_Number(Satanic_Number) then
        Put_Line("El numero es satanico");
    else
        Put_Line("El numero no es satanico");
    end if;
end Satanic_Number;