import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Yes or No?',
          ),
        ),
        body: Center(
          child: FilledButton.tonal(
            onPressed: () {},
            child: const Text(
              'Click me',
            ),
          ),
        ),
      ),
    );
  }
}
