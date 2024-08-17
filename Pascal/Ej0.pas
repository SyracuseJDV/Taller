
Program NumAleatorio;

Var 
  numR, num, cant: integer;

Begin
  cant := 0;
  writeln('Ingrese un numero');
  readln(num);
  writeln('El numero elegido por el usuario es: ', num);
  Randomize;
  numR := random (10);
  writeln('El numero random es:  ', numR);
  While (num <> numR) Do
    Begin
      cant := cant + 1;
      Randomize;
      numR := random (10);
    End;
  writeln('La coincidencia se ha dado después de:  ', cant, ' intentos');
End.
