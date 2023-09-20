import 'package:flutter/material.dart';

class ImageViewer extends StatelessWidget {
  final String image;
  const ImageViewer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('images/$image')),
    );
  }
}
