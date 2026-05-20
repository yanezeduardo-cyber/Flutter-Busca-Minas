import 'package:flutter/material.dart';

class HighScoreScreen extends StatelessWidget {
  const HighScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Marcadores")),
      body: const Center(child: Text("Pantalla de Marcadores")),
    );
  }
}
