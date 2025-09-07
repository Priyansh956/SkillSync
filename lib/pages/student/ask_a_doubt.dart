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
      backgroundColor: Colors.blue[50], // student-friendly vibe
      appBar: AppBar(
        title: const Text(
          "Ask a Doubt",
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),

              // Student doubt icon
              Icon(Icons.help_outline, size: 90, color: Colors.indigo),
              const SizedBox(height: 16),

              const Text(
                "Got a question?",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),

              const Text(
                "Don’t worry! Ask your doubt below and get it resolved.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),

              // Subject field
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Subject",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.indigo[900],
                  ),
                ),
              ),
              const SizedBox(height: 8),

              DropdownButtonFormField<String>(
                value: subject,
                items: subjects
                    .map((s) => DropdownMenuItem(
                  value: s,
                  child: Text(s),
                ))
                    .toList(),
                onChanged: (value) => setState(() => subject = value),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Select subject",
                ),
                validator: (value) =>
                value == null ? "Please select a subject" : null,
              ),
              const SizedBox(height: 24),

              // Doubt field
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Your Doubt",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.indigo[900],
                  ),
                ),
              ),
              const SizedBox(height: 8),

              TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Type your doubt here...",
                  prefixIcon: const Icon(Icons.edit_note),
                ),
                onChanged: (value) => doubt = value,
                validator: (value) => value == null || value.isEmpty
                    ? "Please enter your doubt"
                    : null,
              ),
              const SizedBox(height: 40),

              // Submit button
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  minimumSize: const Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                icon: const Icon(Icons.send),
                label: const Text("Submit Doubt"),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // TODO: Send doubt to backend / Firestore / database
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Doubt submitted successfully ✅"),
                      ),
                    );
                    Navigator.pop(context); // Go back after submit
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
