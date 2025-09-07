import 'package:flutter/material.dart';
import 'tutor_home_page.dart';

class TutorLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tutor Login")),
      body: Center(
        child: ElevatedButton(
          child: Text("Login/Register as Tutor"),
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => TutorHomePage()),
          ),
        ),
      ),
    );
  }
}
