import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/screens/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i0.wp.com/www.biggaypictureshow.com/bgps/wp-content/uploads/2015/01/ted-2-poster1.jpg?resize=750%2C1188')),
        ),
        title: const Text('Mi amor <3'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: 50,
            itemBuilder: (context, index) {
              return const MyMessageBubble();
            },
          )),
          const Text('Mundo')
        ],
      ),
    ));
  }
}
