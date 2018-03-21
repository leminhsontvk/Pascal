Program Downcase;
Uses Crt,Dos;
Var a : String;
Var b : String;
Var i, e : integer;
Begin
    Clrscr;
    Write('vui long nhap chuoi: ');
    Read(a);
    Clrscr;
    b:='';
    For i:=1 To Length(a) Do
        Begin
            If ( ( Ord(a[i]) >= 65 ) and (Ord(a[i]) <=90 ) ) Then
                Begin
                    b:=b+Chr(Ord(a[i])+32);
                End
            Else
                Begin
                    b:=b+a[i];
                End;
        End;
    Write(b);
    Read(e);
End.
