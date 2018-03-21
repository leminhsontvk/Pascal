program FindSymmetricStr;
Uses crt;
Var Str : String;
Var Loop, Check, Count, LoopDo, e : byte;
Begin
    Clrscr;
    Write('Nhap xau can kiem tra: ');
    Read(Str);
    Check := length(Str);
    Count := trunc(Check/2); {Lam tron phan nguyen cua bien.}
    For Loop := 1 To Count Do
        Begin
            If (Ord(Str[Loop])) <> (Ord(Str[Check])) Then {Bien doi ve ma ASCII de so sanh.}
                Begin
                    Write('Xau vua nhap khong phai la xau doi xung.');
                    Break;
                End
            Else
                Begin
                    Dec(Check, 1); {Giam bien Check xuong 1 don vi}
                    If (Loop = Count) Then Write('Xau vua nhap la xau doi xung.');
                End;
        End;
    Read(e);
End.
