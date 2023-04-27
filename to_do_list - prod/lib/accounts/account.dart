import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class AccountPage extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final DatabaseReference databaseReference = FirebaseDatabase.instance.reference();

  Future<void> _sendDataToDatabase() async {
    await databaseReference.child('messages').push().set({
      'name': _nameController.text.trim(),
      'password': _passwordController.text.trim(),
    });
    print('Data sent');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async {
                await _sendDataToDatabase();
              },
              child: Text('Enter'),
            ),
          ],
        ),
      ),
    );
  }
}
