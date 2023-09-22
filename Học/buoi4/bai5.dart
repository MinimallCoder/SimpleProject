void main() {
  {
    List<int> Evennumber = [];
    List<int> Oddnumber = [];

    /// Cách này copy của thầy e chỉ sửa chút xíu thôi
    for (int i = 0; i <= 99; i++) {
      switch (i % 2) {
        case 0:
          Evennumber.add(i);
          break;
        case 1:
          Oddnumber.add(i);
          break;
        default:
          print("result");
          break;
      }
    }
    print("Số chẵn: $Evennumber");
    print("Số lẻ: $Oddnumber");
  }
  List<int> evennumber = [];
  List<int> oddnumber = [];

  for (int i = 0; i <= 99; i++) {
    if (i % 2 == 0) {
      evennumber.add(i);
    } else {
      oddnumber.add(i);
    }
  }
  print("Các số chẵn: $evennumber");
  print("Các số lẻ: $oddnumber");
}
