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

    int a = 1,b = 2,c = 3,d = 4;
    
    changeNumber(a,b,c,d); 


}
