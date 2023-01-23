import 'dart:io';

void main() {
  List<int> lst = new List<int>();
  while (true) {
    stdout.write("Enter a number or 'q' to quit: ");
    var input = stdin.readLineSync();
    if (input == "q") break;
    var number = int.tryParse(input);
    if (number != null) {
      lst.add(number);
    } else {
      stdout.writeln("Invalid input, please enter a valid number or 'q' to quit");
    }
  }
  print("List: $lst");
}
