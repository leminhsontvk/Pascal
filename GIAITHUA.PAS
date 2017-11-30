Program Giai_Thua_n;
Uses Crt, Dos;
{Biến Giai Thừa, Biến Lặp, Giai Thừa} 
Var GT, Loop, VarN : longint;
Var e : Byte;
Begin
    {Khởi tao giá trị mặc đinh của biến giai thừa là 1.}
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
