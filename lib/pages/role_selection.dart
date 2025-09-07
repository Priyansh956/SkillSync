import 'package:flutter/material.dart';
import 'tutor/tutor_signup_page.dart';
import 'student/student_signup_page.dart';

class RoleSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Choose Role"))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 60), // width, height
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text("I am a Tutor"),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => TutorSignUpPage()),
              ),
            ),
            SizedBox(width: 10, height: 10,),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 60),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: const Text("I am a Student"),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => StudentSignUpPage()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
