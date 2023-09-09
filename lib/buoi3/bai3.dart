///Khai báo toàn bộ các kiểu dữ liệu: Non-Nullable Types và Nullable Types, dynamic, var. Có sử dụng các từ khoá static, final, late, const.

double db = 1.1;
String str = "a";
bool isFalse = true;

int? so1 = null;
double? db1 = null;
String? str1 = null;
bool? isTrue = null;

var soVar = 1;
var dbVar = 1.1;
var strVar = "a";
var isFalseVar = false;
var aVar = [1, 2, 3, 4, 5];

List<int> listInt = [0, 1, 2, 3];
List<String> listString = ["a", "b", "c"];
List<bool> listBool = [true, false];
List<double> listDouble = [1.1, 2.2, 3.3];

dynamic So = 1;
dynamic Chuoi = "a";
dynamic Bool = false;
dynamic Double = 1.1;
dynamic ListInt = [1, 2, 3];
dynamic ListString = ["a", "b", "c"];
dynamic ListBool = [true, false];
dynamic ListDouble = [1.1, 2.2, 3.3];

final Chuot = '1';
const Caheo = 2;
late final Daibang = '123';

class A {
  static int stInt = 1;
  static double stDouble = 1.1;
  static String stString = "abc";
  static bool stBool = false;
  static List<int> stListInt = [1, 2, 3];
  static List<String> stListString = ["a", "b", "c"];
  static List<bool> stListBool = [true, false];
  static List<double> stListDouble = [1.1, 2.2, 3.3];
}

/// Các hàm chuyển đổi qua lại giữa string, int, double.

String getIntFromString(int input) => input.toString();
String getDoubleFromString(double input) => input.toString();
int getStringfromInt(String input) => int.parse(input);
double getStringfromDouble(String input) => double.parse(input);

void main() {
  int n = 6;
  int giaithua = 1;
  for (int i = 6; i >= 1; i--) {
    giaithua *= i;
    int ketqua = n * i;
    print("$n * $i = $ketqua");
  }
  String Ketqua = "6";
  for (int i = 5; i >= 1; i--) {
    Ketqua += "*" + i.toString();
  }

  print("$Ketqua = $giaithua");
  print("Giai thừa của $n là: $giaithua");
}
