import 'package:flutter/material.dart';

class PublishCoursePage extends StatelessWidget {
  final _titleController = TextEditingController();
  final _priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("Publish Course"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2193b0), Color(0xFF6dd5ed)], // smart blue gradient
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),

              // Course publishing icon
              Icon(Icons.auto_stories, size: 100, color: Colors.white),
              const SizedBox(height: 20),

              const Text(
                "Publish Your Smart Course",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                "Share your knowledge with the world and inspire learners everywhere.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),

              // Course Title Input
              TextField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: "Course Title",
                  prefixIcon: const Icon(Icons.book_outlined),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Course Price Input
              TextField(
                controller: _priceController,
                decoration: InputDecoration(
                  labelText: "Price",
                  prefixIcon: const Icon(Icons.attach_money),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 40),

              // Publish Button
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 6,
                  shadowColor: Colors.black45,
                  textStyle: const TextStyle(fontSize: 20),
                ),
                icon: const Icon(Icons.publish, size: 26),
                label: const Text("Publish"),
                onPressed: () {
                  // Handle publishing
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
