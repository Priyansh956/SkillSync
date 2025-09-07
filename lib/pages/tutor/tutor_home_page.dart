import 'package:flutter/material.dart';
import 'tutor_publish_course.dart';

class TutorHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: const Text("Tutor Dashboard"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tutor Welcome Section
            Center(
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.deepOrange,
                    child: Icon(Icons.school, size: 60, color: Colors.white),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Welcome, Tutor 👩‍🏫",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    "Guide learners and share your knowledge",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // Course Management Section
            const Text(
              "📚 Course Management",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 3,
              child: ListTile(
                leading: const Icon(Icons.publish, color: Colors.deepOrange),
                title: const Text("Publish a Course",
                    style: TextStyle(fontWeight: FontWeight.w600)),
                subtitle:
                const Text("Create and share new courses with students"),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => PublishCoursePage()),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Doubt Solving Section
            const Text(
              "❓ Student Doubts",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 3,
              child: ListTile(
                leading: const Icon(Icons.help_outline, color: Colors.teal),
                title: const Text("Solve Doubts",
                    style: TextStyle(fontWeight: FontWeight.w600)),
                subtitle:
                const Text("View and answer student questions"),
                onTap: () {
                  // TODO: Implement doubt solving flow
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
