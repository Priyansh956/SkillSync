import 'package:flutter/material.dart';
import 'student_home_page.dart';

class StudentSignUpPage extends StatefulWidget {
  @override
  _StudentSignUpPageState createState() => _StudentSignUpPageState();
}

class _StudentSignUpPageState extends State<StudentSignUpPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _signUp() {
    // For now just navigate; later integrate Firebase/Auth
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => StudentHomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student Sign Up")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: "Email"),
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Sign Up"),
              onPressed: _signUp,
            ),
          ],
        ),
      ),
    );
  }
}
