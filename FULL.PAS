Program InString_Num_Char;
Uses Crt, Dos;
Var NumCount, CharCount, MainLoop, MainRemoveLoop : Integer;
Var CharTemp : Char;
Var Out : Byte;
var e : Byte;
Var RemoveA, RemoveB, StrLength : Byte;
Var Str : String;
Var StrA, StrB : Char;
Var NumStr, CharStr : String;
Procedure Show(Str : String);
    Begin
        MainRemoveLoop := 1;
        StrLength := Length(Str);
        While (MainRemoveLoop <= StrLength) Do
            Begin
                For RemoveA := 1 To Length(Str) Do
                    Begin
                        For RemoveB := RemoveA + 1 To Length(Str) Do
                            Begin
                                StrA := Str[RemoveA];
                                StrB := Str[RemoveB];
                                If (Ord(StrA) = Ord(StrB)) Then
                                    Begin
                                        Delete(Str, RemoveB, 1);
                                    End;
                            End;
                    End;
                Inc(MainRemoveLoop);
            End;
        For MainLoop := 1 To Length(Str) Do
            Begin
                Write(Str[MainLoop],' ');
            End;
        Writeln('');
    End;
Begin
    NumCount := 0;
    CharCount := 0;
    Clrscr;
    Write('Vui long nhap chuoi: ');
    Read(Str);
    Clrscr;
    Write('Dang xu li...');
    Delay(1000);
     For MainLoop := 1 To Length(Str) Do
         Begin
             CharTemp := Str[MainLoop];
             Out := Ord(CharTemp);
             If((Out >= 48) and (Out <= 57)) Then
                 Begin
                     Inc(NumCount);
                     NumStr := NumStr + Str[MainLoop];
                 End;
             If ((Out >= 65) And (Out <=90)) Or ((Out >= 97) And (Out <= 122)) Then
                 Begin
                     Inc(CharCount);
                     CharStr := CharStr + Str[MainLoop];
                 End;
         End;
    Clrscr;
    Writeln('Ket Qua:');
    Writeln('Do dai chuoi: ',Length(Str));
    Write('Co ',Length(NumStr),' Ki tu la so. Gom: ');
    Show(NumStr);
    Write('Co ',Length(CharStr),' Ki tu la chu. Gom: ');
    Show(CharStr);
    Read(e);
End.
