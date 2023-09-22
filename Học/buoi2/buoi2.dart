void main() {
  /// Có thê sử dụng nháy đơn
  String s = 'Hello World';
  print(s);
  List<String> Splittedstrs = s.split(' ');
  print("splittedstrs -> $Splittedstrs");
  bool Hasworldstrs = s.contains('hi');
  print("hasworldstr -> $Hasworldstrs");
  String suppercase = s.toUpperCase();
  String slowercase = s.toLowerCase();
  print("suppercase -> $suppercase");
  print("slowercase -> $slowercase");
  int Sindexof = s.indexOf("l");
  print("sindexof -> $Sindexof");
  bool sStartWith = s.startsWith("h");
  print("sStartWith -> $sStartWith");
  String sReplaced = s.replaceAll("hello", "Hi");
  print("sReplaced -> $sReplaced"); // sẽ in ra: sReplaced -> Hello everyone

  /// loại bỏ khoảng trắng ở đầu/cuối string
  String sTrimmed = s.trim();
  print("s -> \"$s\""); // sẽ in ra: s -> "Hello world "
  print("sTrimmed -> $sTrimmed"); // sẽ in ra: sTrimmed -> Hello world
  int a = 0;
  int b = 99;

  print("a = $a");
  print("b = $b");

  double ac = 10000;
  double bd = 2000.5;
  int c = 300;
  int d = 40;

  int _resultInt = (ac + bd + c + d).toInt();
  double _resultDouble = (ac + bd + c + d);

  print("_resultInt -> $_resultInt"); // sẽ in ra: _resultInt -> 0
  print("_resultDouble -> $_resultDouble"); // sẽ in ra: _resultDouble -> 0.0

  String _acstr = ac.toString();
  String _bdStr = bd.toString();

  print("int a tostring: $_acstr");
  print("double b toString: $_bdStr");

  double _aDouble = a.toDouble();
  print("int a todouble: $_aDouble");

  int _bdint = bd.toInt();
  print("double bd to toint: $_bdint");

  String e = "9";
  int _eInt = int.parse(e);
  double _eDouble = double.parse(e);
  print("parce string c to int: $_eInt");
  print("parce string c to double: $_eDouble");

  List strs = ["a", "b", "c"];
  List<String> strs_1 = <String>["a", "b", "c"];

  strs.add("d");
  print("strs after adding \"d\" -> $strs");

  strs.remove("d");
  print("strs after removing \"d\" -> " + strs.toString());

  print("strs after adding \"d\" then remove \"d\" -> ${strs
    ..add("d")
    ..remove("d")}");

  List<String> strs_2 = ["d", "e", "f"];
  strs_1.addAll(strs_2);
  print("strs_1 after addAll strs_2 -> $strs_1");

  List<String> strs_1_subList = strs_1.sublist(1, 5);
  print("strs_1_subList -> $strs_1_subList");

  Map map = {"key": "value"};
  print("map -> $map");

  Map<int, String> map1 = Map<int, String>();
  map1[100] = "value";
  print("map1 -> $map1");

  Map<int, String> map2 = Map.from(map1);
  print("map2 -> $map2");

  int key = map1.keys.first;
  print("key from map1 -> $key"); // key from map1 -> key

  String value = map1.values.first;
  print("value from map1 -> $value"); // sẽ in ra: value from map1 -> value

  /// trong map key là duy nhất, không thể có 2 key cùng giá trị
  Map map12 = map1..addAll(map2);
  print("map12 -> $map12"); // sẽ in ra: map12 -> {key: value}
}
