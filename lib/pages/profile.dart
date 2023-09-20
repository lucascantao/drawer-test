import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'PROFILE',
          style: TextStyle(fontSize: 14),
        ),
        backgroundColor: const Color(0xff1d1f22),
      ),
      body: const Center(child: Text("Profile")),
    );
  }
}
