import 'dart:io';

void changeNumber(int a, int b,int c,int d){
    int a1 = a;

    a = b;
    b = c;
    c = d;
    d = a1; 
    
    print("a: ${a}");
    print("b: ${b}");
    print("c: ${c}");
    print("d: ${d}");
}


void main(){
    print("a: ");
    String? a = stdin.readLineSync();
    int a_1 = int.parse(a!);
    print("b: ");
    String? b = stdin.readLineSync();
    int b_1 = int.parse(b!);
    print("c: ");
    String? c = stdin.readLineSync();
    int c_1 = int.parse(c!);
    print("d: ");
    String? d = stdin.readLineSync(); 
    int d_1 = int.parse(d!);
    // int a = 1,b = 2,c = 3,d = 4;
    
    changeNumber(a_1,b_1,c_1,d_1); 


}
