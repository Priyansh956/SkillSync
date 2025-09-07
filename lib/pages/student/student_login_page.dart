import 'package:flutter/material.dart';
import 'student_home_page.dart';

class StudentLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student Login")),
      body: Center(
        child: ElevatedButton(
          child: Text("Login/Register as Student"),
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => StudentHomePage()),
          ),
        ),
      ),
    );
  }
}
