program a_Top2W2;

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

  i := L;
//a_Top:
  //if i < R then  // Jika i < R maka

  while i < R do
  begin
    Gotoxy (L,T);
    Write(Char(218));
    GotoXY(i, T); // Pindah ke posisi (i, T)
    Write(Char (196));  // Menulis karakter A
    Delay(d);  // delay
    i := i + 1;  // Menambah nilai i
  //goto a_Top;  // Kembali ke label a_Top
  end;

  i := T;
//Rgt:
  //if i < B then  // Jika i < B maka
  while i < B do
  begin
    Gotoxy (R,T);
    Write(Char(191));
    GotoXY(R, i);  // Pindah ke posisi (R, i)
    Write(Char(179));  // Menulis karakter A
    Delay(d);  // delay
    i := i + 1;  // Menambah nilai i
   //oto a_Rgt;  // Kembali ke label a_Rgt
  end;

  i := R;
//Low:
  //if i > L then  // Jika i > L maka
  while i > L do
  begin
    Gotoxy (R,B);
    Write(Char(217));
    GotoXY(i, B);  // Pindah ke posisi (i, B)
    Write(char(196));  // Menulis karakter A
    Delay(d);  // delay
    i := i - 1;  // Mengurangi nilai i
  //goto a_Low;  // Kembali ke label a_Low
  end;

  i := B;
//Lft:
  //if i > T then  // Jika i > T maka
  while i > T do
  begin
    Gotoxy (L,B);
    Write(Char(192));
    GotoXY(L, i);  // Pindah ke posisi (L, i)
    Write(Char(179));  // Menulis karakter A
    Delay(d);  // delay
    i := i - 1;  // Mengurangi nilai i
  //goto a_Lft;  // Kembali ke label a_Lft
  end;

  ReadKey;
end.

