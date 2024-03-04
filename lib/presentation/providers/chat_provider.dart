import 'package:flutter/material.dart';

import 'package:yes_no/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(text: 'Hola amor!', fromWho: FromWho.me),
    Message(text: 'Are you back from work?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    // TODO: implement method
  }
}
