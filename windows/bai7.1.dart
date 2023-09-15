class LopHoc {
  final String Tenlophoc;
  final int SLhocvien;
  final List<String> Hocvien;
  final List<String> hocvienbuild;

  LopHoc(
      {required this.Tenlophoc,
      required this.SLhocvien,
      required this.Hocvien,
      required this.hocvienbuild});

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
    final randomList = List.generate(
        remainMembers(), (index) => String.fromCharCode(index + 65));

    /// toSet() Xóa bỏ trùng lặp có thể xảy ra
    randomList.toSet().toList();

    for (int i = 0; i < randomList.length; i++) {
      /// contains() kiểm tra xem một phần tử có tồn tại trong list hay không?
      if (!Hocvien.contains(randomList[i])) {
        Hocvien.add(randomList[i]);
      }
    }
  }

  void tao() {
    print('Lớp học ${Tenlophoc}:');
    print('tên lớp học: ${Tenlophoc}');
    print('SL học viên: ${SLhocvien}');
    print('Học viên: ${getHocVien()}');
    print('Tính năng build: ${hocvienbuild} ');
    print('Số lượng thành viên còn thiếu: ${remainMembers()}');
  }
}

class Flutter extends LopHoc
    implements buidandroid, buildios, builddeskapp, buildweb {
  Flutter(
      {required super.Tenlophoc,
      required super.SLhocvien,
      required super.Hocvien,
      required super.hocvienbuild});

  @override
  void tao() {
    super.tao();
  }

  // Danh sách tính năng build của các học viên trong lớp Flutter
  final List<String> hocvienbuild = [
    'build android',
    'build ios',
    'build web',
    'build desktop app'
  ];
}

class Android extends LopHoc implements buidandroid {
  Android(
      {required super.Tenlophoc,
      required super.SLhocvien,
      required super.Hocvien,
      required super.hocvienbuild});

  @override
  void tao() {
    super.tao();
  }

  // Danh sách tính năng build của các học viên trong lớp Android
  final List<String> hocvienbuild = ['build android'];
}

class Ios extends LopHoc implements buildios {
  Ios(
      {required super.Tenlophoc,
      required super.SLhocvien,
      required super.Hocvien,
      required super.hocvienbuild});

  @override
  void tao() {
    super.tao();
  }

  // Danh sách tính năng build của các học viên trong lớp iOS
  final List<String> hocvienbuild = ['build ios'];
}

class Web extends LopHoc implements buildweb {
  Web(
      {required super.Tenlophoc,
      required super.SLhocvien,
      required super.Hocvien,
      required super.hocvienbuild});

  @override
  void tao() {
    super.tao();
  }

  // Danh sách tính năng build của các học viên trong lớp Web
  final List<String> hocvienbuild = ['build web'];
}

class buidandroid {}

class buildios {}

class buildweb {}

class builddeskapp {}

void main() {
  // Tạo các lớp học
  final flutter = Flutter(
    Tenlophoc: 'Flutter',
    SLhocvien: 11,
    Hocvien: ['A', 'B'],
    hocvienbuild: [
      'build android',
      'build ios',
      'build web',
      'build desktop app'
    ],
  );

  final android = Android(
    Tenlophoc: 'Android',
    SLhocvien: 12,
    Hocvien: ['B', 'C', 'D'],
    hocvienbuild: ['build android'],
  );

  final ios = Ios(
    Tenlophoc: 'iOS',
    SLhocvien: 13,
    Hocvien: ['D', 'E', 'F'],
    hocvienbuild: ['build ios'],
  );

  final web = Web(
    Tenlophoc: 'Web',
    SLhocvien: 14,
    Hocvien: ['F'],
    hocvienbuild: ['build web'],
  );
  flutter.addStudents();
  android.addStudents();
  ios.addStudents();
  web.addStudents();

  flutter.tao();
  android.tao();
  ios.tao();
  web.tao();
}
