class Number {
  int So;

  Number(this.So);

  /// Phương thức cộng
  int add(Number that) {
    if (that.So < 0) {
      throw Exception("Số không được nhỏ hơn 0");
    }

    return this.So + that.So;
  }

  /// Phương thức trừ
  int subtract(Number that) {
    if (that.So < 0) {
      throw Exception("Số không được nhỏ hơn 0");
    }

    return this.So - that.So;
  }

  /// Phương thức nhân
  int multiple(Number that) {
    if (that.So < 0) {
      throw Exception("Số không được nhỏ hơn 0");
    }

    return this.So * that.So;
  }

  /// Phương thức chia
  int divide(Number that) {
    if (that.So < 0) {
      throw Exception("Số không được nhỏ hơn 0");
    }

    return this.So % that.So;
  }
}

void main() {
  Number So = new Number(49);

  Number so = new Number(53);

  /// Cộng
  int Cong = So.add(so);
  print("Tổng: $Cong");

  /// Trừ
  int Tru = So.subtract(so);
  print("Hiệu: $Tru");

  /// Nhân
  int Nhan = So.multiple(so);
  print("Tích: $Nhan");

  /// Chia
  int Chia = So.divide(so);
  print("Thương: $Chia");

  /// in lỗi Số không được nhỏ hơn 0
  Number Sola = new Number(-13);

  /// Cộng
  try {
    Cong = So.add(Sola);
  } catch (e) {
    print(e);
  }

  /// Trừ
  try {
    Tru = So.subtract(Sola);
  } catch (e) {
    print(e);
  }

  /// Nhân
  try {
    Nhan = So.multiple(Sola);
  } catch (e) {
    print(e);
  }

  /// Chia
  try {
    Chia = So.divide(Sola);
  } catch (e) {
    print(e);
  }
}
