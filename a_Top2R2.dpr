program a_Top2R2;

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
    Gotoxy (L,T);
    Write(Char(218));
    GotoXY(i, T);
    Write(char(196));
    Delay(d);
    i := i + 1;
    until i >= R;

  // Menggambar garis kanan
  i := T;
   repeat
    Gotoxy (R,T);
    Write(Char(191));
    GotoXY(R, i);
    Write(Char(179));
    Delay(d);
    i := i + 1;
   until i >= b;

  // Menggambar garis bawah
  i := R;
  repeat
    Gotoxy (R,B);
    Write(Char(217));
    GotoXY(i, B);
    Write(Char(196));
    Delay(d);
    i := i - 1;
   until i <= L;

  // Menggambar garis kiri
  i := B;
  repeat
    Gotoxy (L,B);
    Write(Char(192));
    GotoXY(L, i);
    Write(Char(179));
    Delay(d);
    i := i - 1;
  until i <= T;

  ReadKey;
end.

