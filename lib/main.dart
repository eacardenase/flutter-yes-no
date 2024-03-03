import 'package:flutter/material.dart';

import 'package:yes_no/config/theme/app_theme.dart';
import 'package:yes_no/presentation/screens/chat/chat_screens.dart';

void main() {
  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes or No',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 2).theme(),
      home: const ChatScreen(),
    );
  }
}
