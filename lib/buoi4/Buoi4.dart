void main(List<String> args) {
  /* int a = 10;
  a *= 2;
  print("a-> $a");
  a = a + 1;
  a = a - 1;
  a = a * 2;
  a = (a / 2) as int;
  a = 10 ~/ 6;

  int b = 10 * (9 - 8);
  print("b-> $b");

  bool b = true;
  print("${b == true ? b == true : b == false}");*/

  /*String str = "Hello World";
  int a = 10;
  print("str == a || a == 10");
  print("str == a & a == 10");

  if ((str == a)) {
    print("True");
  }
  if (!(str == a)) {
    print("True");
  }
  if ((str != a)) {
    print("True");
  }
  final bool isStrA = (str == a) == false && !(str == a) && str != a;*/

  /*int count = 10;
  for (var i = -1; i < count; i++) {
    if (count == 10) {
      if (i == -1) {
        continue;
      }
    }
    print("i-> $i");
  }*/

  int a = 10;
  try {
    a = int.parse("Hello world");

    /// khi parse int sẽ gây ra lỗi, nhưng được bọc bởi try catch
    /// nên sẽ không thể print ra biến a
    print("after parse, a = $a");
  } catch (ex) {
    print(
        "exception -> ${ex.toString()}"); // exception -> FormatException: Hello world
  } finally {
    print(
        "finally after parse, a = $a"); // sẽ in ra finally after parse, a = 10
  }
}
