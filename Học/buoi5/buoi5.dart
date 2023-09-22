class Human {
  final String name;
  final int age;
  const Human({required this.name, required this.age});
}

// class Parent
class Parent extends Human {
  Parent({required super.name, required super.age});
  void test() {
    print("Parent");
  }
}

class Child extends Parent {
  Child({required super.name, required super.age});
  @override
  String get name => "Child";
  @override
  void test() {
    print("Child");
    super.test();
  }
}

void main(List<String> args) {
  Child C = Child(name: "Hiep", age: 27);
  C.test();

  Parent C1 = Parent(name: "A", age: 99);
  print(C1);
  // ignore: unnecessary_type_check
  print(C1 is Parent);
}

class Mercenary extends Human {
  ///class
  /// 1 properties trong class

  /// class chứa đối tượng
  final Gun gun;

  /// hàm khởi tạo Mercenary với 3 tham số bắt buộc
  const Mercenary({required super.name, required super.age, required this.gun});

  /// 1 phuowng thức của Mercenary
  void shot() {}
}

class Gun {
  final String name;
  final int numberOfBullets;

  const Gun({required this.name, this.numberOfBullets = 0});
}
/*void main(List<String> args) {
 SinhVien sv = SinhVien();
 sv.setAge = 10;
 print("sv age is ${sv.getAge}");
}
/// Có thể dấu _age sang 1 file .dart # và ẩn file đó đi với đièu kiện file đó vẫn nằm trong project
class SinhVien {
 int _age = 10;
 int get getAge => _age; // => hàm getter
 set setAge(int age) { // => hàm setter
   // xử lý logic ở đây
   _age = age;
 }
}*/

