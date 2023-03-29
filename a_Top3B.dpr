program a_Top3B;

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
  GotoXY(L,T); write('A'); // sudut kiri atas
  for i := L+1 to R-1 do
  begin
    GotoXY(i, T);
    Write('A'); // garis horizontal
    Delay(d);
  end;

  // Membuat garis kanan
  GotoXY(R,T); write('A'); // sudut kanan atas
  for i := T+1 to B-1 do
  begin
    GotoXY(R, i);
    Write('A'); // garis vertikal
    Delay(d);
  end;

  // Membuat garis bawah
  GotoXY(R,B); write('A'); // sudut kanan bawah
  for i := R-1 downto L+1 do
  begin
    GotoXY(i, B);
    Write('A'); // garis horizontal
    Delay(d);
  end;

  // Membuat garis kiri
   GotoXY(L,B); write('A'); // sudut kiri bawah
  for i := B-1 downto T+1 do
  begin
    GotoXY(L, i);
    Write('A'); // garis vertikal
    Delay(d);
  end;

  ReadKey;
end.

