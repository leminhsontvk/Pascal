Program InString_Num_Char;
Uses Crt, Dos;
{Biến đếm trong quá trình xủ lý.}
Var NumCount, CharCount, MainLoop, MainRemoveLoop : Integer;
{Bộ tam ký tự.}
Var CharTemp : Char;
{Biến kết qua khi chuyển đổi về bản mã ASCII.}
Var Out : Byte;
{Biến dừng chương trình, sử dụng trong trường hợp không dừng bằng Readln được.}
var e : Byte;
{Biến đếm các ký tự trùng nhau trong xâu kết quả.}
Var RemoveA, RemoveB, StrLength : Byte;
{Biến xâu ban đầu}
Var Str : String;
{Biến định nghĩa các ký tự trong quá trình loại ký tự trùng nhau.}
Var StrA, StrB : Char;
{Chuỗi kết quả là ký tự số và chữ.}
Var NumStr, CharStr : String;
{Chương trình con trả về kết quả và loại bỏ giá trị nhau.}
Procedure Show(Str : String);
    Begin
        {
            MainRemoveLoop: Lặp lại n lần bằng chiều dài của xâu.
            StrLength: chiểu dài của xâu. Tránh bị thay đổi sau khi xoá ký tự trong xâu.
            StrA: Mã ASCII của ký tự thứ RemoveA trong xâu Str.
            StrB: Mã ASCII của ký tự thứ thu RemoveB trong xâu Str.
            RemoveA: Biến đếm lặp hết chiều dài xâu.
            RemoveB: Biến đếm tìm mã ASCII của ký tự trùng với StrA.
            Ham:
               Ord: Đổi ký tự về mã ASCII.
               Delete(Str, RemoveB, 1):Xóa ký tự thứ RemoveB
               trong xâu Str và xóa 1 ký tự.
                   Str: Xâu cần xóa.
                   RemoveB: Vị trí cần xóa.
                   1: Xóa bao nhiêu ký tự. Ở đây là 1 ký tự.
        }
        MainRemoveLoop := 1;
        StrLength := Length(Str);
        {Lặp n lần bằng chiều dài xâu.}
        While (MainRemoveLoop <= StrLength) Do
            Begin
                {Lấy vị trí của ký tự cần kiểm tra trùng lặp trong xâu Str.}
                For RemoveA := 1 To Length(Str) Do
                    Begin
                        {
                            Kiểm tra các ký tự còn lại,
                            Kể từ vị trí thứ RemoveA cộng 1 của xâu.
                        }
                        For RemoveB := RemoveA + 1 To Length(Str) Do
                            Begin
                                {Ký tự cần kiểm tra}
                                StrA := Str[RemoveA];
                                {Ký tự được kiểm tra}
                                StrB := Str[RemoveB];
                                {
                                    Xét xem giá trị trong bảng mã ASCII có bằng nhau không,
                                    Nếu có thì loại bỏ khỏi xâu.
                                }
                                If (Ord(StrA) = Ord(StrB)) Then
                                    Begin
                                        {Xóa các ký tự trùng lặp}
                                        Delete(Str, RemoveB, 1);
                                    End;
                            End;
                    End;
                Inc(MainRemoveLoop);
            End;
        {In ra từng ký tự của xau6kem2 1 khoảng trắng.}
        For MainLoop := 1 To Length(Str) Do
            Begin
                Write(Str[MainLoop],' ');
            End;
        Writeln('');
    End;
Begin
    {Khởi tạo giá trị ban đầu của các biến điếm.}
    NumCount := 0;
    CharCount := 0;
    Clrscr;
    Write('Vui long nhap chuoi: ');
    Read(Str);
    Clrscr;
    Write('Dang xu li...');
    Delay(1000);
    {
        MainLoop: Biến lặp toàn chương trình.
        CharTemp: Biến lưu tạm giá trị của 1 ký tự trong xâu.
        Out: Tra về giá trị của CharTemp trong abn3g mã ASCII.
        NumStr: xâu là ký tự số sau khi lọc. 
        CharStr: Xâu là chữ sau khi lọc.
        NumCount: Biến đếm tổng số ký tự là số.
        CharCount: Biến đếm tổng số ký tự là chự.
        Hàm
            Inc(x): Cộng giá trị của biến x lên 1 đơn vị.
    }

     {Lấy vị trí của ký tự cần kiểm tra là chữ hay số trong xâu Str.}
     For MainLoop := 1 To Length(Str) Do
         Begin
             {Lưu tạm giá trị của ký tự trong xâu Str tại vị trí MainLoop}
             CharTemp := Str[MainLoop];
             {Đổi ký tự về giá trị trong ban mã ASCII.}
             Out := Ord(CharTemp);
             {Kiểm tra là số.}
             If((Out >= 48) and (Out <= 57)) Then
                 Begin
                     {Cộng thêm biến đếm ký tự là số lên 1 đơn vị.}
                     Inc(NumCount);
                     {Thêm klý tự đó vào xâu ký tự là số.}
                     NumStr := NumStr + Str[MainLoop];
                 End;
             {Kiểm tra là chữ.}
             If ((Out >= 65) And (Out <=90)) Or ((Out >= 97) And (Out <= 122)) Then
                 Begin
                     {Cộng thêm biến đếm ký tự là chữ lên 1 đơn vị.}
                     Inc(CharCount);
                     {Thêm klý tự đó vào xâu ký tự là chữ.}
                     CharStr := CharStr + Str[MainLoop];
                 End;
         End;
     {In ra kết quả.}
    Clrscr;
    Writeln('Ket Qua:');
    Writeln('Do dai chuoi: ',Length(Str));
    Write('Co ',Length(NumStr),' Ki tu la so. Gom: ');
    Show(NumStr);
    Write('Co ',Length(CharStr),' Ki tu la chu. Gom: ');
    Show(CharStr);
    Read(e);
End.
