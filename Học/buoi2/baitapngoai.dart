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

  print(list);
  print(
      '${identityHashCode(phones[0])} - ${identityHashCode(phones[1])} - ${identityHashCode(phones[2])}');
  for (int i = 1; i < 2; i++) {
    final temp = list[i];
    list[i] = list[i + 1];
    list[i + 1] = temp;
  }

  print(list);
  print(
      '${identityHashCode(phones[0])} - ${identityHashCode(phones[1])} - ${identityHashCode(phones[2])}');
}
