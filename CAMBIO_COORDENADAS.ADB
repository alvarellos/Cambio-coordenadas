with Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;
use Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;

-- Escribir un programa que al meterle un pto en coord rectangulares te lo devuelva en coord polares


procedure Cambio_Coordenadas is

-- Cambio de coord rect a coord polares
-- Tipos

   Type Tipo_Rectangulares is
      record
         x : Float;
         y : Float;
      end record;

   Type Tipo_Polares is
      record
         r, Fi : Float;
      end record;

-- Funcion ---------------------------------------------------------------------------------------------


   function Cambiar_Coordenadas (P1 : Tipo_Rectangulares) return Tipo_Polares is
   -- Pre : cierto
   -- Pos : convierte P1 (coord rect) a coord polar
   -- Declaracion local de variables
   P2 : Tipo_Polares;
      begin
         P2.r := Sqrt (P1.x**2+P1.y**2);
         P2.Fi := Arctan (P1.y/P1.x);
         return P2;
   end Cambiar_Coordenadas;

------------------------------------------------------------------------------------------------------------

-- Declaracion global de variables

A : Tipo_Rectangulares;
B : Tipo_Polares;

begin
   Put ("Coord rectangulares (Coordx_Coordy)" );
   Get (A.x);
   Get (A.y);
   B := Cambiar_Coordenadas (A);
   Put ("Cambiado a polares queda : ");
   Put (B.r);
   Put (B.Fi);
   
end Cambio_Coordenadas;
