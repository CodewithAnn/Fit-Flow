import 'package:flutter/material.dart';

class GoalsPage extends StatefulWidget {
  const GoalsPage({super.key});

  @override
  State<GoalsPage> createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> {
  @override
  Widget build(BuildContext context) {
    return
    // Todo: replace with goals design.
     const Scaffold(
      body: Center(
        child: Text("My Goals"),
      ),
    );
  }
}
