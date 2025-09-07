import 'package:flutter/material.dart';

class PublishCoursePage extends StatelessWidget {
  final _titleController = TextEditingController();
  final _priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Publish Course")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: "Course Title"),
            ),
            TextField(
              controller: _priceController,
              decoration: InputDecoration(labelText: "Price"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Publish",
              style: TextStyle(
                fontSize: 20,
              ),),
              onPressed: () {
                // Handle publishing
              },
            ),
          ],
        ),
      ),
    );
  }
}
