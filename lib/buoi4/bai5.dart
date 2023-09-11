void main() {
  List<String> result = [];
  for (int i = 0; i <= 99; i++)
    switch (i % 2) {
      case 0:
        print("$i là số chẵn");
        break;
      case 1:
        print("$i là số lẻ");
        break;
      default:
        print("result");
        break;
    }
}
