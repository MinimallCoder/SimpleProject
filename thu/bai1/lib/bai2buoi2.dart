// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

///Từ 1 array có sẵn (slide sau), dùng tất cả các cách mà bạn biết để print ra String sau. Chú ý các ký tự viết hoa, viết thường, khoảng trắng…
///“Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (phần 1)”
void main(List<String> args) {
  List arr = [
    1,
    2,
    3,
    "đây",
    "kết",
    "là",
    true,
    false,
    {true: "buổi", 1: "học", 10.2: ":", false: "dart basics"},
    ['thứ', 'quả', 'về'],
    "(phần 1)",
    {"flutter": "dart"},
  ];

  /// Lấy data từ array trên và tạo ra 1 String với giá trị sau:
  /// Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (phần 1)

  // ví dụ
  //sẽ in ra "Đây" các ký tự sau tương tự như vậy.*/

  String s1 =
      "${arr[3].toString().substring(0, 1).toUpperCase()}${arr[3].toString().substring(1, 3)}";
  String s2 = "${arr[5]} ${arr[4]}";
  String s3 = "${arr[9][1]}";
  String s4 = "${arr[8].values.first} ${arr[8][1]}";
  String s5 = "${arr[9][0]} ${arr[1].toInt()} ${arr[9][2]}";
  String s6 =
      "${arr[11]["flutter"].substring(0, 1).toUpperCase()}${arr[11]["flutter"].substring(1, 4)}";
  String s7 = "${arr[8][false].substring(0).toUpperCase()} ${arr[10]}";
  print('"$s1 $s2 $s3 $s4 $s5 $s6: $s7"');

  String ss =
      "${arr[11]["flutter"][0].toString().toUpperCase()}${arr[11]["flutter"].toString().substring(1)}${arr[8][10.2]}";
  String sss = arr[8][false].toString().toUpperCase();
  print(
      '"$s1 ${arr[5]} ${arr[4]} ${arr[9][1]} ${arr[8][true]} ${arr[8][1]} ${arr[9][0]} ${arr[1]} ${arr[9][2]} $ss $sss ${arr[10]}"');
}
