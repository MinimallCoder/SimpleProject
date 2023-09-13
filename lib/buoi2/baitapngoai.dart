void main() {
  final phones = <String>['Nokia', 'Xiaomi', 'iPhone'];

  print(phones);
  print(
      '${identityHashCode(phones[0])} - ${identityHashCode(phones[1])} - ${identityHashCode(phones[2])}');

  /// viết code ở đây, đổi vị trí Xiaomi và iPhone
  /// Dùng biến tạm
  String Doivitri = phones[1];
  phones[1] = phones[2];
  phones[2] = Doivitri;
  print(phones);
  print(
      '${identityHashCode(phones[0])} - ${identityHashCode(phones[1])} - ${identityHashCode(phones[2])}');

  /// Không dùng biến tạm
  final list = <String>['Nokia', 'Xiaomi', 'iPhone'];

  for (int i = 0; i < list.length; i++) {
    if (i == 0) {
      String temp = list[i];
      list[i] = list[2];
      list[2] = temp;
    }
  }

  print(list);
  print(phones);
  print(
      '${identityHashCode(phones[0])} - ${identityHashCode(phones[1])} - ${identityHashCode(phones[2])}');

  print(phones);
  print(
      '${identityHashCode(phones[0])} - ${identityHashCode(phones[1])} - ${identityHashCode(phones[2])}');
}
