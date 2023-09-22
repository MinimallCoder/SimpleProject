import 'dart:math';

class LopHoc {
  final String Tenlophoc;
  final int SLhocvien;
  final List<String> Hocvien;
  late int Sobuoi;

  static var classes;
  LopHoc(
      {required this.Tenlophoc,
      required this.SLhocvien,
      required this.Hocvien,
      this.Sobuoi = 10});

  List<String> getHocVien() {
    return Hocvien;
  }

  /// Thêm remainMembers(), tính toán
  /// Trả về số lượng thành viên còn thiếu của mỗi lớp
  int remainMembers() {
    return SLhocvien - Hocvien.length;
  }

  /// Thêm học sinh còn thiếu vào các lớp
  void addStudents() {
    // Biến lưu trữ các học viên đã được thêm vào
    List<String> unique = [];
    // Lặp lại cho đến khi danh sách học viên đủ
    while (Hocvien.length < SLhocvien) {
      // Tạo học viên ngẫu nhiên
      String tenhocvien = String.fromCharCode(Random().nextInt(26) + 65);
      // Kiểm tra xem học viên đã có trong danh sách hay chưa
      if (!unique.contains(tenhocvien)) {
        // Thêm học viên vào danh sách
        Hocvien.add(tenhocvien);
        unique.add(tenhocvien);
      }
    }
  }

  void updateSobuoi(int sobuoi) {
    Sobuoi = sobuoi;
    if (this.Tenlophoc == 'Flutter') {
      // Cập nhật số buổi học cho các lớp học liên quan
      var android;
      android.Sobuoi = sobuoi + 7;
      var ios;
      ios.Sobuoi = sobuoi + 10;
      var web;
      web.Sobuoi = sobuoi - 2;
    }
  }

  void tao() {
    print('Lớp học ${Tenlophoc}:');
    print('tên lớp học: ${Tenlophoc}');
    print('SL học viên: ${SLhocvien}');
    print('Học viên: ${getHocVien()}');
    print('Số lượng thành viên còn thiếu: ${remainMembers()}');
    print('Số buổi học: ${Sobuoi}');
  }
}

class Flutter extends LopHoc
    implements Buidandroid, Buildios, Builddeskapp, Buildweb {
  Flutter(
      {required super.Tenlophoc,
      required super.SLhocvien,
      required super.Hocvien});

  @override
  void tao() {
    super.tao();
    print(
        'Tính năng build: Build android, Build ios, Build web, build desktop app');
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
  }
}

class Web extends LopHoc implements Buildweb {
  Web(
      {required super.Tenlophoc,
      required super.SLhocvien,
      required super.Hocvien});

  @override
  void tao() {
    super.tao();
    print('Tính năng build: Build web');
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

  // Thiết lập số buổi học cho các lớp học
  flutter.Sobuoi = 12;

  // In thông tin các lớp học
  flutter.tao();
  android.tao();
  ios.tao();
  web.tao();
}
