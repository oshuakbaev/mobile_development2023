int summa(int a,int b){
    return a+b; 
}

dynamic comeback({Function? function,var a,var b}){
    print(function!(a,b));
}

void main(){
    comeback(function:summa,a:1,b:1);4.
}