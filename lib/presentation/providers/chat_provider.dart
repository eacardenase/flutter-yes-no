import 'package:flutter/material.dart';

import 'package:yes_no/domain/entities/message.dart';
import 'package:yes_no/config/helpers/get_yes_no_answer.dart';

class ChatProvider extends ChangeNotifier {
  final chatScrollController = ScrollController();

  List<Message> messages = [
    Message(text: 'Hi Julia!', fromWho: FromWho.me),
    Message(text: 'Are you back from work?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    final newMessage = Message(text: text, fromWho: FromWho.me);

    messages.add(newMessage);

    notifyListeners();
    _moveScrollToBottom();

    if (text.endsWith('?')) herReply();
  }

  Future<void> _moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  Future<void> herReply() async {
    final herMessage = await GetYesNoAnswer.getAnswer();

    messages.add(herMessage);

    notifyListeners();
    _moveScrollToBottom();
  }
}
