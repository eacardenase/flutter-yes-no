import 'package:flutter/material.dart';
import 'package:yes_no/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no/presentation/widgets/chat/my_message_bubble.dart';

class ChatView extends StatelessWidget {
  const ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return index.isEven
                      ? const HerMessageBubble()
                      : const MyMessageBubble();
                },
              ),
            ),
            const Text('Mundo'),
          ],
        ),
      ),
    );
  }
}
