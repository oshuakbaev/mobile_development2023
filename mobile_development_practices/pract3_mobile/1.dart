import 'dart:io';

class Room {
  int height = 0, lenght = 0, width = 0;

  Room(int height, int lenght, int width) {
    this.height = height;
    this.lenght = lenght;
    this.width = width;
  }

  int volume() {
    return this.height * this.lenght * this.width;
  }
}

void main() {
  print("Enter heigh: ");
  String? input = stdin.readLineSync();
  int height = int.parse(input!);

  print("Enter lenght: ");
  String? input1 = stdin.readLineSync();
  int lenght = int.parse(input1!);

  print("Enter width: ");
  String? input2 = stdin.readLineSync();
  int width = int.parse(input2!);

  Room myRoom = new Room(height, lenght, width);

  print(myRoom.volume());
}
