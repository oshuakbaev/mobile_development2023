mixin showName{
	ShowThisName(String name){
		return name; 
	}
	int ShowThisAge(int age){
		return age; 
	}
	
	int ShowThisId(int id){
		return id;
	}
}

class Student with showName{
	String name; 
	int age;
	int id; 
	Student(this.name,this.age,this.id);
}

class Teacher with showName{

	String name;
	int age;
	int id;

	Teacher(this.name,this.age,this.id);	
}

class OfficeManager with showName{
	String name; 
	int age;
	int id;

	OfficeManager(this.name,this.age,this.id); 
}


var Olzhas = Student('Olzhas',20,555666); 
var Bakdaulet = Teacher('Bakdaulet',25,666777);
var Asel = OfficeManager('Asel',55,777888); 

void main(){
	
	print(Olzhas.ShowThisName(Olzhas.name));
	print(Olzhas.ShowThisAge(Olzhas.age));
	print(Olzhas.ShowThisId(Olzhas.id));

	print('\n');
	print(Bakdaulet.ShowThisName(Bakdaulet.name));
	print(Bakdaulet.ShowThisAge(Bakdaulet.age));
	print(Bakdaulet.ShowThisId(Bakdaulet.id));

	print('\n');
	print(Asel.ShowThisName(Asel.name));
	print(Asel.ShowThisAge(Asel.age));
	print(Asel.ShowThisId(Asel.id));

}

// mixin нужен для того чтобы каждых 1000-ных пользователей не добавлять лишнего кода и лишних нагрузок.
// и мы используем "премиси" для того чтобы использовать один метод везде. Что то похожа на наследование.