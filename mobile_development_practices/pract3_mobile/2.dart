import 'dart:io';

class Student {
  String? name;
  double? point1_subj, point2_subj, point3_subj;

  Student(
      String name, double point1_subj, double point2_subj, double point3_subj) {
    this.name = name;
    this.point1_subj = point1_subj;
    this.point2_subj = point2_subj;
    this.point3_subj = point3_subj;
  }

  String? nameStudent() {
    return this.name;
  }

  double? sumOfPoints() {
    return this.point1_subj! + this.point2_subj! + this.point3_subj!;
  }
}

void main(List<String> args) {
  print("Enter name of student: ");
  String? nameOfStudent = stdin.readLineSync();

  print("Enter first point of subject: ");
  String? point1_subj_input = stdin.readLineSync();
  double point1_subj = double.parse(point1_subj_input!);

  print("Enter 2nd point of subject: ");
  String? point2_subj_input = stdin.readLineSync();
  double point2_subj = double.parse(point2_subj_input!);

  print("Enter 3rd point of subject: ");
  String? point3_subj_input = stdin.readLineSync();
  double point3_subj = double.parse(point3_subj_input!);

  Student myStudent =
      new Student(nameOfStudent!, point1_subj, point2_subj, point3_subj);

  print(
      "Student name is ${myStudent.name}, the sum of points is ${myStudent.sumOfPoints()}");
}
