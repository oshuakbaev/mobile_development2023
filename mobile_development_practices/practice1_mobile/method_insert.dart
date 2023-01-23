main(){
	
	var lst = <int?>[];

	
	void method_insert(){

		for(var i = 0; i<5;i++){
			lst.add(i);
		}
	}

	// List<int> lst = new List<int>.generate(5, (i) => i + 1);

	method_insert();
	print(lst);
	return 0; 
}