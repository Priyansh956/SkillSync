import 'package:flutter/material.dart';
import 'tutor_home_page.dart';

class TutorSignUpPage extends StatefulWidget {
  @override
  _TutorSignUpPageState createState() => _TutorSignUpPageState();
}

class _TutorSignUpPageState extends State<TutorSignUpPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _signUp() {
    // For now just navigate; later integrate Firebase/Auth
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => TutorHomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tutor Sign Up")),
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
