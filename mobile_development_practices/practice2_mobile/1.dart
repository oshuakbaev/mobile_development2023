bool HuppyNumber(List<int> number){
    int a = number[0];
    bool flag = true;

    for(int i=0;i<number.length;i++){
        if(number[i]==a){
            flag = true;        
        }else{
            flag = false;
            break; 
        }
    }

    return flag; 
}


void main(){

    String number = "1111"; 
    List<int> list = List<int>.from(number.split('').map(int.parse));

    int length = number.length;

    for(int i=0;i<length;i++){
        list.add(int.parse(number[i]));
    }

    // print(HuppyNumber(list));

    if(HuppyNumber(list)==true){
        print("It's a happy number!");
    }else{
        print("Sad. It's not a happy number:("); 
    }
}
