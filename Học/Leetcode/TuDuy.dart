// leetcode 425
/*List<String> result(int n) {
  List<String> chuoi = [""];
  for (int i = 1; i <= n; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      chuoi.add("FizzBuzz");
    } else if (i % 3 == 0) {
      chuoi.add('Fizz');
    } else if (i % 5 == 0) {
      chuoi.add('Buzz');
    } else {
      chuoi.add(i.toString());
    }
  }
  return chuoi;
}

void main(List<String> args) {
  print(result(104));
}

bool a(int num) {
  for (int i = 1; i * i <= num; i++) {
    if (i * i == num) {
      return true;
    }
  }
  return false;
}
void ReverseString(List<String> s) {
  int i = 0;
  int j = s.length - 1;
  while (j > i) {
    String store = s[i];
    s[i] = s[j];
    s[j] = store;
    i++;
    j--;
  }
}

String defangIPaddr(String address) {
  return address.replaceAll(".","[]");
}

String toLowerCase(String s) {
  String result = "";
  for (int i = 0; i < s.length; i++) {
    if (s.codeUnitAt(i) >= 65 && s.codeUnitAt(i) <= 90) {
      int value = s.codeUnitAt(i) + 32;
      result = result + String.fromCharCode(value);
    } else {
      result = result + s[i];
    }
  }
}
*/