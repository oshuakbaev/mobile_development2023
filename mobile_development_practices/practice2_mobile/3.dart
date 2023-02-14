

int summa(int a, int b){
    return a+b;
}
int multiple(int a, int b){
    return a*b; 
}

double divide(double a, double b){
    return a/b; 
}
dynamic comeback(Function function, var a,var b){
    print(function!(a,b));
}


void main(){


    comeback(summa,15,20);
    comeback(divide,15.5,20.5);
    comeback(multiple,15,20);

}