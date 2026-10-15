import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PrelimScreen(),
    );
  }
}

class PrelimScreen extends StatefulWidget {
  const PrelimScreen({super.key});

  @override
  State<PrelimScreen> createState() => _PrelimScreenState();
}

class _PrelimScreenState extends State<PrelimScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: const Text("Prelim Exam"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Prelim Exam",
            style: TextStyle(
                fontSize: 26, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            "Prencess Luisa D. Defensor",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          const SizedBox(height: 20),
          box("BOX 1"),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              box("BOX 2"),
              const SizedBox(width: 20),
              box("BOX 3"),
            ],
          ),
        ],
      ),
    );
  }

  Widget box(String label) {
    return Container(
      height: 100,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          label,
          style: const TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

