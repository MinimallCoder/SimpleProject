void main() {
  /// Nhập số n
  int n = 4134953;

  /// Khởi tạo mảng chứa các số nguyên tố
  List<int> Prime = [];

  /// Duyệt qua các số từ 0 đến n
  for (int i = 0; i <= n; i++) {
    // Kiểm tra xem số i có phải là số nguyên tố hay không
    bool SoNguyenTo = true;
    for (int j = 2; j * j <= i; j++) {
      if (i % j == 0) {
        SoNguyenTo = false;
        break;
      }
    }

    /// Nếu là số nguyên tố thì thêm vào mảng
    if (SoNguyenTo) {
      Prime.add(i);
    }
  }

  print("$Prime");
}
