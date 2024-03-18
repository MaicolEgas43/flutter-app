import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: const BoxDecoration(color: Colors.black),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Laboris duis dolore amet nostrud',
                style: TextStyle(color: Colors.amber),
              ),
            ))
      ],
    );
  }
}
