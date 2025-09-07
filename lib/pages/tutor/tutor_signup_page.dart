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
      backgroundColor: Colors.blue[50], // light academic background
      appBar: AppBar(
        title: const Text("Tutor Sign Up"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

            // Teacher / Study icon
            Icon(Icons.menu_book, size: 100, color: Colors.blueAccent),
            const SizedBox(height: 20),

            const Text(
              "Welcome, Tutor!",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),

            const Text(
              "Create your account to start teaching and sharing knowledge.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),

            // Email input
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: "Email",
                prefixIcon: const Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),

            // Password input
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: const Icon(Icons.lock_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              obscureText: true,
            ),
            const SizedBox(height: 30),

            // Sign Up button
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                minimumSize: const Size(double.infinity, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                textStyle: const TextStyle(fontSize: 20),
              ),
              icon: const Icon(Icons.person_add_alt_1),
              label: const Text("Sign Up"),
              onPressed: _signUp,
            ),
          ],
        ),
      ),
    );
  }
}
