program a_Top2R;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  crt;

var
  L, T, R, B: Integer;
  i, d: Integer;

begin
  L := 5; T := 3; R := 40; B := 20; d := 50;  

  // Menggambar garis atas
  i := L;
   repeat
    GotoXY(i, T);
    Write('A');
    Delay(d);
    i := i + 1;
    until i >= R;

  // Menggambar garis kanan
  i := T;
   repeat
    GotoXY(R, i);
    Write('A');
    Delay(d);
    i := i + 1;
   until i >= b;

  // Menggambar garis bawah
  i := R;
  repeat
    GotoXY(i, B);
    Write('A');
    Delay(d);
    i := i - 1;
   until i <= L;

  // Menggambar garis kiri
  i := B;
  repeat
    GotoXY(L, i);
    Write('A');
    Delay(d);
    i := i - 1;
  until i <= T;

  ReadKey;
end.

