with Ada.Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Float_Text_IO;

procedure Itas_Miliatik_Metrora is
   Itsas_Miliak : Float;
   ITSAS_MILIAK_SCALE : constant Float := 1852.0;
begin
   Put("Sartu zenbaki bat itsas miliatik metroetara pasatzeko: ");
   Get(Itsas_Miliak);

   Put(Itsas_Miliak, 1, 2, 0);
   Put("itsas miliak,");
   Put(Itsas_Miliak * ITSAS_MILIAK_SCALE, 1, 2, 0);
   Put("metro dira.");
end Itas_Miliatik_Metrora;