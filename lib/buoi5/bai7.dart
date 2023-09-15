// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_overrides, overridden_fields, annotate_overrides
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
    implements Buidandroid, Buildios, Builddeskapp, Buildweb {
  Flutter(
      {required super.Tenlophoc,
      required super.SLhocvien,
      required super.Hocvien,
      required super.hocvienbuild});

  @override
  void tao() {
    super.tao();
  }

  /// Danh sách tính năng build của các học viên trong lớp Flutter
  final List<String> hocvienbuild = [
    'build android',
    'build ios',
    'build web',
    'build desktop app'
  ];
}

class Android extends LopHoc implements Buidandroid {
  Android(
      {required super.Tenlophoc,
      required super.SLhocvien,
      required super.Hocvien,
      required super.hocvienbuild});

  @override
  void tao() {
    super.tao();
  }

  /// Danh sách tính năng build của các học viên trong lớp Android
  final List<String> hocvienbuild = ['build android'];
}

class Ios extends LopHoc implements Buildios {
  Ios(
      {required super.Tenlophoc,
      required super.SLhocvien,
      required super.Hocvien,
      required super.hocvienbuild});

  @override
  void tao() {
    super.tao();
  }

  /// Danh sách tính năng build của các học viên trong lớp iOS
  final List<String> hocvienbuild = ['build ios'];
}

class Web extends LopHoc implements Buildweb {
  Web(
      {required super.Tenlophoc,
      required super.SLhocvien,
      required super.Hocvien,
      required super.hocvienbuild});

  @override
  void tao() {
    super.tao();
  }

  /// Danh sách tính năng build của các học viên trong lớp Web
  final List<String> hocvienbuild = ['build web'];
}

class Buidandroid {}

class Buildios {}

class Buildweb {}

class Builddeskapp {}

void main() {
  /// Tạo các lớp học
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
  flutter.tao();
  android.tao();
  ios.tao();
  web.tao();
}
