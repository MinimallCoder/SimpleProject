import 'dart:math';

class LopHoc {
  final String Tenlophoc;
  final int SLhocvien;
  final List<String> Hocvien;
  late int Sobuoihoc = 10;

  LopHoc(
      {required this.Tenlophoc,
      required this.SLhocvien,
      required this.Hocvien});

  List<String> getHocVien() {
    return Hocvien;
  }

  /// Lấy số buổi học của lớp
  int getSobuoihoc() {
    return Sobuoihoc;
  }

  /// Thêm remainMembers(), tính toán
  /// Trả về số lượng thành viên còn thiếu của mỗi lớp
  int remainMembers() {
    return SLhocvien - Hocvien.length;
  }

  /// Thêm học sinh còn thiếu vào các lớp
  void addStudents() {
    // Biến lưu trữ các học viên đã được thêm vào
    Map<String, bool> unique = {};
    // Lặp lại cho đến khi danh sách học viên đủ
    while (Hocvien.length < SLhocvien) {
      // Tạo học viên ngẫu nhiên
      String tenhocvien = String.fromCharCode(Random().nextInt(26) + 65);
      // Kiểm tra xem học viên đã có trong danh sách hay chưa
      if (!unique.containsKey(tenhocvien)) {
        // Thêm học viên vào danh sách
        Hocvien.add(tenhocvien);
        unique[tenhocvien] = true;
      }
    }
  }

  /// Đặt số buổi học của lớp
  void setSobuoihoc(int sobuoihoc) {
    if (sobuoihoc < 10) {
      throw Exception("Số buổi học không được nhỏ hơn 10");
    }
    Sobuoihoc = sobuoihoc;
  }

  /// Tăng số buổi học của lớp lên 1
  void tangSobuoihoc() {
    Sobuoihoc++;
  }

  /// Giảm số buổi học của lớp đi 1
  void giamSobuoihoc() {
    Sobuoihoc--;
  }

  /// Số buổi học của lớp Android luôn nhiều hơn Flutter 5 buổi
  int getSobuoihocAndroid() {
    return Sobuoihoc + 5;
  }

  get SobuoihocAndroid => Sobuoihoc + 5;

  /// Số buổi học của lớp ios luôn nhiều hơn Android 3 buổi
  int getSobuoihocIos() {
    return SobuoihocAndroid + 3;
  }

  int get SobuoihocIos => SobuoihocAndroid + 3;

  /// Số buổi học của lớp Web luôn ít hơn Flutter 3 buổi
  int getSobuoihocWeb() {
    return Sobuoihoc - 2;
  }

  void tao() {
    print('Lớp học ${Tenlophoc}:');
    print('tên lớp học: ${Tenlophoc}');
    print('SL học viên: ${SLhocvien}');
    print('Học viên: ${getHocVien()}');
    print('Số lượng thành viên còn thiếu: ${remainMembers()}');
  }
}

class Flutter extends LopHoc
    implements Buidandroid, Buildios, Buildweb, Builddeskapp {
  Flutter(
      {required super.Tenlophoc,
      required super.SLhocvien,
      required super.Hocvien});

  @override
  void tao() {
    super.tao();
    print(
        'Tính năng build: Build android, Build ios, Build web, build desktop app');
    print('Số buổi học: ${getSobuoihoc()}');
  }
}

abstract class Buidandroid {}

abstract class Buildios {}

abstract class Buildweb {}

abstract class Builddeskapp {}

class Android extends LopHoc implements Buidandroid {
  Android(
      {required super.Tenlophoc,
      required super.SLhocvien,
      required super.Hocvien});

  @override
  void tao() {
    super.tao();
    print('Tính năng build: Build android');
    print('Số buổi học của lớp Android: ${getSobuoihocAndroid()}');
  }
}

class Ios extends LopHoc implements Buildios {
  Ios(
      {required super.Tenlophoc,
      required super.SLhocvien,
      required super.Hocvien});

  @override
  void tao() {
    super.tao();
    print('Tính năng build: Build ios');
    print('Số buổi học của lớp iOS: ${getSobuoihocIos()}');
  }
}

class Web extends LopHoc implements Buildweb {
  Web(
      {required super.Tenlophoc,
      required super.SLhocvien,
      required super.Hocvien});

  int get SobuoihocWeb => Sobuoihoc - 2;

  @override
  void tao() {
    super.tao();
    print('Tính năng build: Build web');
    if (SobuoihocWeb < 10) {
      throw Exception("Số buổi học không được nhỏ hơn 10");
    }
    print('Số buổi học của lớp Web: ${getSobuoihocWeb()}');
  }
}

void main() {
  // Tạo các lớp học
  final flutter = Flutter(
    Tenlophoc: 'Flutter',
    SLhocvien: 11,
    Hocvien: ['A', 'B'],
  );
  final android = Android(
    Tenlophoc: 'Android',
    SLhocvien: 12,
    Hocvien: ['B', 'C', 'D'],
  );
  final ios = Ios(
    Tenlophoc: 'iOS',
    SLhocvien: 13,
    Hocvien: ['D', 'E', 'F'],
  );
  final web = Web(
    Tenlophoc: 'Web',
    SLhocvien: 14,
    Hocvien: ['F'],
  );
// Thêm học sinh còn thiếu
  flutter.addStudents();
  android.addStudents();
  ios.addStudents();
  web.addStudents();
  flutter.tao();
  android.tao();
  ios.tao();
  web.tao();
}
