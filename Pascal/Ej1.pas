
Program Ej1;

Type 
  elemento = Record
    cod: integer;
  End;

  lista = ^nodo;
  nodo = Record
    datos: elemento;
    sig: lista;
  End;


Procedure CrearListaAgregarAdelante (Var L: lista);
Procedure AgregarAdelante (Var L: lista; elem: elemento);

Var 
  nue: Lista;
Begin
  New(nue);
  nue^.datos := elem;
  nue^.sig := L;
  L := nue;
End;

Var 
  e: elemento;
Begin
  Randomize;
  e.cod := random(16);
  While (e.cod <> 15) Do
    Begin
      agregarAdelante(L, e);
      Randomize;
      e.cod := random(16);
    End;
End;

Procedure ImprimirLista (Var L: Lista);
Begin
  While (L <> Nil) Do
    Begin
      writeln('El numero asignado a esta lista es:  ', L^.datos.cod);
      L := L^.sig;
    End;
End;

Var 
  L: lista;

Begin
  L := Nil;
  CrearListaAgregarAdelante(L);
  ImprimirLista(L);
End.
