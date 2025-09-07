import 'package:flutter/material.dart';
import 'student_profile_page.dart';

class StudentHomePage extends StatelessWidget {
  final List<String> enrolledCourses = [
    "Flutter Basics",
    "Advanced Dart",
    "Data Structures",
    "Algorithms",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Dashboard"),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => ProfilePage()),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
              ),
              itemCount: enrolledCourses.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Center(child: Text(enrolledCourses[index])),
                );
              },
            ),
          ),
          ElevatedButton(
            child: Text("Ask a Doubt",
            style: TextStyle(
              fontSize: 20,
            ),),
            onPressed: () {
              // Implement ask doubt flow
            },
          ),
        ],
      ),
    );
  }
}
