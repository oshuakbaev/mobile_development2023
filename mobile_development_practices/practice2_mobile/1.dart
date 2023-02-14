import 'dart:io';

bool HuppyNumber(List<int> number) {
  int middle = number.length ~/ 2;
  int firstSum = number.sublist(0, middle).reduce((a, b) => a + b);
  int secondSum = number.sublist(middle).reduce((a, b) => a + b);
  //reduce is the sum 
  return firstSum == secondSum;
}



void main(){

    String? number = stdin.readLineSync(); 

    List<int> list = List<int>.from(number?.split('')?.map(int.parse) ?? []);


   // print(HuppyNumber(list));

    if(HuppyNumber(list)==true){
        print("It's a happy number!");
    }else{
        print("Sad. It's not a happy number:("); 
    }
//   print(list);
}
// var input = stdin.readLineSync();