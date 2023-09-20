import 'package:flutter/material.dart';

class CharCard extends StatelessWidget {
  final String name;
  final String image;
  const CharCard({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175,
      width: 100,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('images/$image'))),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            color: const Color(0xff1d1f22),
            child: Text(
              name,
              style: const TextStyle(fontSize: 12, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
