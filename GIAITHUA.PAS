Program Giai_Thua_n;
Uses Crt, Dos;
Var GT, Loop, VarN : longint;
Var e : Byte;
Begin
    {Khoi tao gia tri mat dinh cua GT}
    GT := 1;
    Clrscr;
    Write('Nhap so can tinh giai thua: ');
    Read(VarN);
    Clrscr;
    For Loop := 1 To VarN Do
        Begin
            {Giai thua n=1*2*38..*n}
            GT := GT*Loop;
        End;
    Write(VarN,'! = ',GT);
    Read(e);
End.
