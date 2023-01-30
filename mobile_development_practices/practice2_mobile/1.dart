
bool HuppyNumber(List<int> number){

    int start = 0,end = number.length-1;
    int middle = (start+end)~/2;
    
    int? first_number,second_number;

    while(start<middle){
        first_number=number[start]+number[start+1];
        start++; 
    }
    while(middle<end){
        second_number=number[middle]+number[middle+1];
        middle++; 
    }

    if(first_number==second_number){
      return true;
    }else{
      return false; 
    }
}



void main(){

    String number = "1111"; 
    List<int> list = List<int>.empty(growable:true); 
    int length = number.length;

    for(int i=0;i<length;i++){
        list.add(int.parse(number[i]));
    }

    // print(HuppyNumber(list));

    if(HuppyNumber(list)==true){
        print("It's happy number!");
    }else{
        print("Sad. It's not happy number:("); 
    }
}
