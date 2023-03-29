program a_Top2F2;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  crt;

var
  L, T, R, B: Integer;
  i, d: Integer;

//label a_Top, a_Rgt, a_Low, a_Lft;

begin
  L := 5; T := 3; R := 40; B := 20; d := 50;

  // garis atas

 for  i := L to R-1 do
 begin
   Gotoxy (L,T);
    Write(Char(218));
    GotoXY(i, T);
    Write(Char(196));
    Delay(d);
 end;

  // garis kanan

  for i := T to B-1 do
  begin
    Gotoxy (R,T);
    Write(Char(191));
    GotoXY(R, i);
    Write(char(179));
    Delay(d);
  end;

  // garis bawah

  for i := R downto L+1 do
  begin
    Gotoxy (R,B);
    Write(Char(217));
    GotoXY(i, B);
    Write(Char(196));
    Delay(d);
  end;

  // garis kiri
  
  for i := B downto T+1 do
  begin
    Gotoxy (L,B);
    Write(Char(192));
    GotoXY(L, i);
    Write(Char(179));
    Delay(d);  
  end;

  ReadKey;
end.

