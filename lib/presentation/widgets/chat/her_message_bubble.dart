import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            decoration: BoxDecoration(
                color: color.secondary,
                borderRadius: BorderRadius.circular(20)),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Hola  mundo',
                style: TextStyle(color: Colors.amber),
              ),
            )),
        const SizedBox(height: 50),
        _ImgBubble(),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class _ImgBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/no/19-2062f4c91189b1f88a9e809c10a5b0f0.gif',
        width: size.height * 0.7,
        height: 50,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('Alguien te esta enviando un mensaje'),
          );
        },
      ),
    );
  }
}
