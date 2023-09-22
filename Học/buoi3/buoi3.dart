/*void main(List<String> args) {
  void test(String test) {
    print("Đây là hàm test, params test: $test");
  }

  test("cách gọi hàm phổ biến");
}*/

/*void main1(List<String> args) {
  functionTest(() => test("function call function"));

  var _ret = functionTestCallBack(parseStringFromInt);
  print("Kết quả khi gọi functionTestCallBack -> $_ret");

  var _ret1 = functionTestCallBack((intStr) => parseStringFromInt("10"));
  print("Kết quả khi gọi functionTestCallBack -> $_ret1");
}

void test(String test) {
  print("Đây là hàm test, params test: $test");
}

int parseStringFromInt(String number) => int.tryParse(number) ?? -1;

void functionTest(Function function) {
  function.call();
}

String functionTestCallBack(int Function(String) callback) {
  int result = callback.call("");
  return "Kết quả thực thi function: $result";
}*/

/*void main2(List<String> args) {
  functionWithOptionalParam();

  functionWithOptionalParam(
      b: "không phải giá trị b", a: "không phải giá trị a");

  functionWithPositionalParam("a", "b",
      "c"); // sẽ in ra: params a=a, b=b, b=c, d=, vì không truyền vào d, nên d=""
}

void functionWithOptionalParam({String a = "a", String b = "b"}) {
  print("param a=$a, b=$b");
}

void functionWithPositionalParam(String a, [String b = "", c = "", d = ""]) {
  print("params a=$a, b=$b, b=$c, d=$d");
}*/

/*enum DayOfWeeks {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday
}

extension DayOfWeeksExt on DayOfWeeks {
  String getName() {
    switch (this) {
      case DayOfWeeks.Monday:
        return "Thứ 2";
      case DayOfWeeks.Tuesday:
        return "Thứ 3";
      case DayOfWeeks.Wednesday:
        return "Thứ 4";
      case DayOfWeeks.Thursday:
        return "Thứ 5";
      case DayOfWeeks.Friday:
        return "Thứ 6";
      case DayOfWeeks.Saturday:
        return "Thứ 7";
      case DayOfWeeks.Sunday:
        return "Chủ nhật";
      default: return "Không xác định";
    }
  }
}*/

/*void main(List<String> args) {
  List<DayOfWeeks> dayOfWeeks = DayOfWeeks.values;
  dayOfWeeks.forEach((element) {
    print("day is: ${element.getName()}");
  });
}*/

/*void main(List<String> args) {
  String s = null;
  String? sCanBeNull = null;
  print("sCanBeNull -> $sCanBeNull");
}
*/

/*void main(List<String> args) {
  String? sCanBeNull = null;
  List<String> splitteds = sCanBeNull.split("");
  List<String> splitted_1 = sCanBeNull?.split("") ?? [];
  List<String> splitted_2 = sCanBeNull!.split("");
}*/



