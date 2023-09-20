import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'SETTINGS',
          style: TextStyle(fontSize: 14),
        ),
        backgroundColor: const Color(0xff1d1f22),
      ),
      body: const Center(child: Text("Settings")),
    );
  }
}
