class LopHoc {
  final String Tenlophoc;
  final int SLhocvien;
  final List<String> Hocvien;
  final List<String> hocvien_build;

  LopHoc(
      {required this.Tenlophoc,
      required this.SLhocvien,
      required this.Hocvien,
      required this.hocvien_build});

  List<String> getHocVien() {
    return Hocvien;
  }

  void tao() {
    print('Lớp học ${Tenlophoc}:');
    print('tên lớp học: ${Tenlophoc}');
    print('SL học viên: ${SLhocvien}');
    print('Học viên: ${getHocVien()}');
    print('Tính năng build: ${hocvien_build}, ');
  }
}

class Flutter extends LopHoc
    implements buidandroid, buildios, builddeskapp, buildweb {
  Flutter(
      {required super.Tenlophoc,
      required super.SLhocvien,
      required super.Hocvien,
      required super.hocvien_build});

  @override
  void tao() {
    super.tao();
  }

  // Danh sách tính năng build của các học viên trong lớp Flutter
  final List<String> hocvien_build = [
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
      required super.hocvien_build});

  @override
  void tao() {
    super.tao();
  }

  // Danh sách tính năng build của các học viên trong lớp Android
  final List<String> hocvien_build = ['build android'];
}

class Ios extends LopHoc implements buildios {
  Ios(
      {required super.Tenlophoc,
      required super.SLhocvien,
      required super.Hocvien,
      required super.hocvien_build});

  @override
  void tao() {
    super.tao();
  }

  // Danh sách tính năng build của các học viên trong lớp iOS
  final List<String> hocvien_build = ['build ios'];
}

class Web extends LopHoc implements buildweb {
  Web(
      {required super.Tenlophoc,
      required super.SLhocvien,
      required super.Hocvien,
      required super.hocvien_build});

  @override
  void tao() {
    super.tao();
  }

  // Danh sách tính năng build của các học viên trong lớp Web
  final List<String> hocvien_build = ['build web'];
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
    hocvien_build: [
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
    hocvien_build: ['build android'],
  );

  final ios = Ios(
    Tenlophoc: 'iOS',
    SLhocvien: 13,
    Hocvien: ['D', 'E', 'F'],
    hocvien_build: ['build ios'],
  );

  final web = Web(
    Tenlophoc: 'Web',
    SLhocvien: 8,
    Hocvien: ['F'],
    hocvien_build: ['build web'],
  );
  flutter.tao();
  android.tao();
  ios.tao();
  web.tao();
}
