class Human {
  String? name;
  int? age;
  int? weight, height;
  int? day_of_birth, month_of_birth, year_of_birth;
  String? address;

  Human(
      {String? this.name,
      int? this.age,
      int? this.weight,
      int? this.height,
      int? this.day_of_birth,
      int? this.month_of_birth,
      int? this.year_of_birth,
      String? this.address});
}

class Collegue extends Human {
  int? salary, date_connection, work_exp;

  Collegue(
      {String? name,
      int? age,
      int? weight,
      int? height,
      int? day_of_birth,
      int? month_of_birth,
      int? year_of_birth,
      String? address,
      int? this.salary,
      int? this.date_connection,
      int? this.work_exp})
      : super(
            name: name,
            age: age,
            weight: weight,
            height: height,
            day_of_birth: day_of_birth,
            month_of_birth: month_of_birth,
            year_of_birth: year_of_birth,
            address: address);
}

class Professor extends Collegue {
  int? course;
  List<String> listOfAdvisee = [];

  void addStudent(String name) {
    listOfAdvisee.add(name);
  }

  void removeStudent(String name) {
    listOfAdvisee.remove(name);
  }

  // Student myStudent = new Student();
  Professor(
      {String? name,
      int? age,
      int? weight,
      int? height,
      int? day_of_birth,
      int? month_of_birth,
      int? year_of_birth,
      String? address,
      int? salary,
      int? date_connection,
      int? work_exp,
      int? this.course})
      : super(
            name: name,
            age: age,
            weight: weight,
            height: height,
            day_of_birth: day_of_birth,
            month_of_birth: month_of_birth,
            year_of_birth: year_of_birth,
            address: address,
            work_exp: work_exp,
            salary: salary);
}

class Tehnik extends Collegue {
  Tehnik(
      {String? name,
      int? age,
      int? weight,
      int? height,
      int? day_of_birth,
      int? month_of_birth,
      int? year_of_birth,
      String? address,
      int? salary,
      int? date_connection,
      int? work_exp})
      : super(
            name: name,
            age: age,
            weight: weight,
            height: height,
            day_of_birth: day_of_birth,
            month_of_birth: month_of_birth,
            year_of_birth: year_of_birth,
            address: address,
            work_exp: work_exp,
            salary: salary);
}

class Student extends Human {
  List<int> list_points = List<int>.empty(growable: true);
  List<String> list_subj = List<String>.empty(growable: true);

  List<int> showGrades() {
    return this.list_points;
  }

  int calculateGrades() {
    int sum = 0;
    for (int i = 0; i < list_points.length; i++) {
      sum += list_points[i];
    }
    return sum;
  }

  Student(
      String? name,
      int? age,
      int? weight,
      int? height,
      int? day_of_birth,
      int? month_of_birth,
      int? year_of_birth,
      String? address,
      List<int>? list_points,
      List<String>? list_subj)
      : super(
            name: name,
            age: age,
            weight: weight,
            height: height,
            day_of_birth: day_of_birth,
            month_of_birth: month_of_birth,
            year_of_birth: year_of_birth,
            address: address);
}

void main() {
  Human Bakda = new Human(
      name: "Bakda",
      age: 55,
      weight: 80,
      height: 184,
      day_of_birth: 18,
      month_of_birth: 5,
      year_of_birth: 1984,
      address: "Pushkina7");

  print("Name: ${Bakda.name}");
  print("Age: " + Bakda.age.toString());
  print("Weight: " + Bakda.weight.toString());
  print("Height:" + Bakda.height.toString());
  print(
      "birthday: ${Bakda.day_of_birth}-${Bakda.month_of_birth}-${Bakda.year_of_birth}");
  print("Address: ${Bakda.address}\n");

  Collegue Adlet = new Collegue(
      name: "Adlet",
      age: 34,
      weight: 55,
      height: 155,
      day_of_birth: 31,
      month_of_birth: 2,
      year_of_birth: 2000,
      address: "Dafara33",
      salary: 5000,
      date_connection: 55,
      work_exp: 5);

  print("Name: ${Adlet.name}");
  print("Age: " + Adlet.age.toString());
  print("Weight: " + Adlet.weight.toString());
  print("Height:" + Adlet.height.toString());
  print(
      "birthday: ${Adlet.day_of_birth}-${Adlet.month_of_birth}-${Adlet.year_of_birth}");
  print("Address: ${Adlet.address}");
  print("salary: ${Adlet.salary}");
  print("Date connection: ${Adlet.date_connection}");
  print("Work experience: ${Adlet.work_exp}");

  // Student Zhambo = new Student(
  // name: "Zhambo",
  // age: 21,
  // weight: 70,
  // height: 180,
  // day_of_birth: 1,
  // month_of_birth: 1,
  // year_of_birth: 2000,
  // address: "123 Main St",
  // list_points: [88, 77, 89],
  // list_subj: ["algo", "smalgo"]
  // );

  // I dont know it gives me an error such like
  // test.dart:68:33: Error: Too few positional arguments: 10 required, 0 given.
  //     Student Zhambo = new Student(
  //                                 ^
  // test.dart:36:5: Context: Found this candidate, but the arguments don't match.
  //     Student(String? name, int? age, int? weight, int? height, int? day_of_birth, int? month_of_birth, int? year_of_birth, String? address,

  Professor Kosnikov = new Professor(
      name: "Vyacheslav",
      age: 66,
      weight: 70,
      height: 180,
      day_of_birth: 1,
      month_of_birth: 1,
      year_of_birth: 1955,
      address: "123 Main St",
      work_exp: 5,
      salary: 5000,
      course: 5);

  Kosnikov.addStudent("Bakda");
  Kosnikov.addStudent("Zhanna");
  Kosnikov.addStudent("Kanat");
  Kosnikov.removeStudent("Kanat");
  print("\nName: ${Kosnikov.name}");
  print("Age: " + Kosnikov.age.toString());
  print("Weight: " + Kosnikov.weight.toString());
  print("Height:" + Kosnikov.height.toString());
  print(
      "birthday: ${Kosnikov.day_of_birth}-${Kosnikov.month_of_birth}-${Kosnikov.year_of_birth}");
  print("Address: ${Kosnikov.address}");
  print("Work experience: ${Kosnikov.work_exp}");
  print("Salary:${Kosnikov.salary}");
  print("Course: ${Kosnikov.course}");
  print("Students list: ${Kosnikov.listOfAdvisee}");

  Tehnik Valera = new Tehnik(
      name: "Valera",
      age: 55,
      weight: 66,
      height: 166,
      day_of_birth: 1,
      month_of_birth: 3,
      year_of_birth: 1954,
      address: "Satbayev 55",
      work_exp: 10,
      salary: 10000);

  print("\nName: ${Valera.name}");
  print("Age: " + Valera.age.toString());
  print("Weight: " + Valera.weight.toString());
  print("Height:" + Valera.height.toString());
  print(
      "birthday: ${Valera.day_of_birth}-${Valera.month_of_birth}-${Valera.year_of_birth}");
  print("Address: ${Valera.address}");
  print("Work experience: ${Valera.work_exp}");
  print("Salary:${Valera.salary}");
}
