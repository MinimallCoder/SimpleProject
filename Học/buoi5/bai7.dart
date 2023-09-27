import 'dart:math';

class LopHoc {
  final String Tenlophoc;
  final int SLhocvien;
  final List<String> Hocvien;
  LopHoc(
      {required this.Tenlophoc,
      required this.SLhocvien,
      required this.Hocvien});

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

  void tao() {
    print('Lớp học ${Tenlophoc}:');
    print('tên lớp học: ${Tenlophoc}');
    print('SL học viên: ${SLhocvien}');
    print('Học viên: ${getHocVien()}');
    print('Số lượng thành viên còn thiếu: ${remainMembers()}');
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
