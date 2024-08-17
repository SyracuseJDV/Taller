
Program Ej1A8;

Type 
  elemento = Record
    cod: integer;
  End;

  lista = ^nodo;
  nodo = Record
    datos: elemento;
    sig: lista;
  End;

Procedure EliminarElemento (Var pri: lista);
Procedure BorrarElemento (Var pri:lista; valor:integer; Var exito: boolean);

Var ant, act: lista;
Begin
  exito := false;
  act := pri;
  While (act <> Nil) And (act^.datos.cod <> valor) Do
    Begin
      ant := act;
      act := act^.sig
    End;
  If (act <> Nil) Then
    Begin
      exito := true;
      If (act = pri) Then pri := act^.sig
      Else ant^.sig := act^.sig;
      dispose (act);
    End;
End;

Var 
  num: integer;
  exito: boolean;
Begin
  writeln('Ingrese el numero que desea eliminar: ');
  readln(num);
  BorrarElemento(pri, num, exito);
  If (exito = false) Then
    writeln('El elemento no fue eliminado')
  Else
    writeln('El elemento fue eliminado');
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
  EliminarElemento(L);
  ImprimirLista(L);
End.
