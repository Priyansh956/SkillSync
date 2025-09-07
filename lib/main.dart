import 'package:flutter/material.dart';
import 'pages/role_selection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tutor Student App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: RoleSelectionPage(),
    );
  }
}
