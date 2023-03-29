program a_Top3B2;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  crt;

var
  L, T, R, B: Integer;
  i, d: Integer;

begin
  L := 5; T := 3; R := 40; B := 20; d := 50;

  TextColor(LightMagenta);

  // Membuat garis atas
  GotoXY(L,T); write(Char(218)); // sudut kiri atas
  for i := L+1 to R-1 do
  begin
    GotoXY(i, T);
    Write(Char(196)); // garis horizontal
    Delay(d);
  end;

  // Membuat garis kanan
  GotoXY(R,T); write(Char(191)); // sudut kanan atas
  for i := T+1 to B-1 do
  begin
    GotoXY(R, i);
    Write(Char(179)); // garis vertikal
    Delay(d);
  end;

  // Membuat garis bawah
  GotoXY(R,B); write(Char(217)); // sudut kanan bawah
  for i := R-1 downto L+1 do
  begin
    GotoXY(i, B);
    Write(Char(196)); // garis horizontal
    Delay(d);
  end;

  // Membuat garis kiri
   GotoXY(L,B); write(Char(192)); // sudut kiri bawah
  for i := B-1 downto T+1 do
  begin
    GotoXY(L, i);
    Write(Char(179)); // garis vertikal
    Delay(d);
  end;

  ReadKey;
end.

