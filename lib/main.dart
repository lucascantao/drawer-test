import 'package:flutter/material.dart';
import 'package:test_project_1/pages/image_viewer.dart';

import 'pages/home.dart';
import 'pages/notifications.dart';
import 'pages/profile.dart';
import 'pages/settings.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DRAWER DEMO',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        'Notifications': (context) => const Notifications(),
        'Profile': (context) => const Profile(),
        'Settings': (context) => const Settings(),
        'ImageViewer': (context) => const ImageViewer()
      },
    );
  }
}
