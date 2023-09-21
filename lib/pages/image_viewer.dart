import 'package:flutter/material.dart';

class ImageViewer extends StatelessWidget {
  // final String image;
  const ImageViewer({super.key});

  @override
  Widget build(BuildContext context) {
    final image =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(title: const Text("VIEWER")),
      body: Center(child: Image.asset('images/${image['image']}')),
    );
  }
}
