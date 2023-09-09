// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main(List<String> args) {
  String str =
      " đây là kết quả của buổi học thứ 2 về dart: dart basics (phần 1)...";

  /// hãy viết code bằng tất cả các cách có thể để in ra:
  /// `Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (phần 1)`
  /// gợi ý: sử dụng hàm subString()
  print(str);
  print(str.substring(0, 64));
  print("Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (phần 1)");

  /// Những cái trên là nháp
  /// Sử dụng hàm toUpperCase() để chuyển đổi tất cả các ký tự trong chuỗi thành chữ hoa
  /// Sử dụng hàm substring() để trích xuất các phần tử của chuỗi str
  /// Dấu + được sử dụng để nhiều chuỗi lại với nhau
  print(str.substring(1, 2).toUpperCase() +
      str.substring(2, 16) +
      str.substring(20, 37) +
      str.substring(37, 39).toUpperCase() +
      str.substring(39, 44) +
      str.substring(44, 54).toUpperCase() +
      " " +
      str.substring(56, 64));

  /// Sử dụng hàm replaceAll() để thay thế các ký tự trong chuỗi
  /// ký tự $ có tác dụng chèn giá trị của một biến vào trong chuỗi để tạo thành một chuỗi mới.
  print(
      "Đ${str.substring(2, 15)} buổi ${str.substring(25, 35)}về Dart: ${str.substring(44, 49).replaceAll(" ", "").toUpperCase()} BASIC (phần 1)");

  print(str
      .replaceAll("của", "")
      .replaceAll("basics", "BASIC")
      .replaceAll("dart", "Dart")
      .replaceAll("đây", "Đây")
      .replaceAll("...", ""));
}
