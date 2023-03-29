program a_Top2F;

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
    GotoXY(i, T);
    Write('A');
    Delay(d);
 end;

  // garis kanan

  for i := T to B-1 do
  begin
    GotoXY(R, i);
    Write('A');
    Delay(d);
  end;

  // garis bawah

  for i := R downto L+1 do
  begin
    GotoXY(i, B);
    Write('A');
    Delay(d);
  end;

  // garis kiri
  
  for i := B downto T+1 do
  begin
    GotoXY(L, i);
    Write('A');
    Delay(d);  
  end;

  ReadKey;
end.

