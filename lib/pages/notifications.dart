import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'NOTIFICATIONS',
          style: TextStyle(fontSize: 14),
        ),
        backgroundColor: const Color(0xff1d1f22),
      ),
      body: const Center(child: Text("Notifications")),
    );
  }
}
