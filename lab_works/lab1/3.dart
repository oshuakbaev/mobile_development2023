class Student{
    String name; 
    int point_subj1,point_subj2,point_subj3; 

    Student(this.name,this.point_subj1,this.point_subj2,this.point_subj3);

    double StudentMiddlePoint(){
        double middle = (this.point_subj1+this.point_subj2+this.point_subj3)/3.0;
        return middle; 
    }

}

void main(){

    Student Olzhas = new Student("Olzhas",99,97,99);

    print((Olzhas.StudentMiddlePoint()));
    
}