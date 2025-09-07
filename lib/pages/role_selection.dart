import 'package:flutter/material.dart';
import 'tutor/tutor_signup_page.dart';
import 'student/student_signup_page.dart';

class RoleSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50], // soft background
      appBar: AppBar(
        title: const Text("Choose Role"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Study-related illustration (icon placeholder)
              Icon(Icons.school, size: 100, color: Colors.blueAccent),
              const SizedBox(height: 20),

              const Text(
                "Welcome to StudyConnect!",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                "Select your role to start your learning journey",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),

              // Tutor button
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(220, 60),
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24, vertical: 16),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                icon: const Icon(Icons.menu_book, size: 26),
                label: const Text("I am a Tutor"),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => TutorSignUpPage()),
                ),
              ),
              const SizedBox(height: 20),

              // Student button
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(220, 60),
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24, vertical: 16),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                icon: const Icon(Icons.person, size: 26),
                label: const Text("I am a Student"),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => StudentSignUpPage()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
