import 'package:flutter/material.dart';

class AskDoubtPage extends StatefulWidget {
  const AskDoubtPage({super.key});

  @override
  _AskDoubtPageState createState() => _AskDoubtPageState();
}

class _AskDoubtPageState extends State<AskDoubtPage> {
  final _formKey = GlobalKey<FormState>();
  String? subject;
  String? doubt;

  final List<String> subjects = [
    "Math",
    "Science",
    "English",
    "History",
    "Other",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ask a Doubt",
        style: TextStyle(
          fontSize: 20,
        ),),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Subject", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),

              // Dropdown for subject
              DropdownButtonFormField<String>(
                value: subject,
                items: subjects.map((s) => DropdownMenuItem(value: s, child: Text(s))).toList(),
                onChanged: (value) => setState(() => subject = value),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Select subject",
                ),
                validator: (value) => value == null ? "Please select a subject" : null,
              ),
              const SizedBox(height: 20),

              const Text("Your Doubt", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),

              // Doubt text area
              TextFormField(
                maxLines: 5,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your doubt here...",
                ),
                onChanged: (value) => doubt = value,
                validator: (value) => value == null || value.isEmpty ? "Please enter your doubt" : null,
              ),
              const SizedBox(height: 30),

              // Submit button
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 50),
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // TODO: Send doubt to backend / Firestore / database
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Doubt submitted successfully ✅")),
                      );
                      Navigator.pop(context); // Go back to profile/home
                    }
                  },
                  child: const Text("Submit Doubt", style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
