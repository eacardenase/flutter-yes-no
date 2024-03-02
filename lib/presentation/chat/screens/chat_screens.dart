import 'package:flutter/material.dart';

import 'package:yes_no/presentation/chat/widgets/chat_view.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Her 💕',
        ),
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://hips.hearstapps.com/hmg-prod/images/julia-roberts-transformation-1-1543325921.jpg',
            ),
          ),
        ),
      ),
      body: const ChatView(),
    );
  }
}
