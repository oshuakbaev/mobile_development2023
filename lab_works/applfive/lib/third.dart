import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  const Third({Key? key}) : super(key: key);
  @override
  _Third createState() => _Third();
}
class LoginData{
  String username = "";
  String password = "";
}

class _Third extends State{
  LoginData _loginDate = new LoginData();
  GlobalKey <FormState> _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Третий экран',
        ),
        actions: [

          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Back'),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Form(
          key: this._formKey,
          child: Column(children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              validator: (String? inValue){
                  if(inValue!.length == 0){
                    return "Please enter username";
                  }
                  return null;
              },
              onSaved:(String? inValue){
                this._loginDate.username = inValue!;
              },

              decoration: InputDecoration(
                hintText: "none@none.com",
                labelText: "Username(eMail address)"
              ),
            ),
            TextFormField(
              obscureText: true,
              validator: (String? inValue){
                if(inValue!.length<10){
                  return "Password must be more than 10 symbols";
                }
                return null;
              },
              onSaved: (String? inValue){
                this._loginDate.password=inValue!;
              },
              decoration: InputDecoration(
                hintText: "Password", labelText: "Password"
              ),
            ),
            ElevatedButton(onPressed: (){
              if(_formKey.currentState!.validate()){
                _formKey.currentState!.save();
              }
              print("Username: ${_loginDate.username}");
              print("Password: ${_loginDate.password}");
            }, child: Text("Log in!"))


          ],),
        ),
      ),

     ),
    );
  }
}