import 'dart:io'; 
import 'dart:convert';



    int max_length(List<int> numbers){
        int max = numbers[0]; 

        for(int i = 0; i<numbers.length;i++){    
            
            if(max<numbers[i]){
                max = numbers[i];
            }
        }
        return max; 
    }

    main(){



        // List<int> numbers = [1,5,6,8,10]; 
        List<int> numbers1 = [1,555,65555,8,10]; 
 

        print(max_length(numbers1));
        



        return 0; 
    }