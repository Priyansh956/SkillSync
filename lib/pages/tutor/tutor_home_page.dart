import 'package:flutter/material.dart';
import 'tutor_publish_course.dart';

class TutorHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tutor Dashboard")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Publish a Course",
              style: TextStyle(
                fontSize: 20,
              ),),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => PublishCoursePage()),
              ),
            ),
            ElevatedButton(
              child: Text("Doubt Solving",
              style: TextStyle(
                fontSize: 20,
              ),),
              onPressed: () {
                // Implement doubt solving flow
              },
            ),
          ],
        ),
      ),
    );
  }
}
