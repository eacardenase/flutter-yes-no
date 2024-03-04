import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final outlinedInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
      borderRadius: BorderRadius.circular(20),
    );

    final inputDecoration = InputDecoration(
      enabledBorder: outlinedInputBorder,
      focusedBorder: outlinedInputBorder,
      filled: true,
      suffixIcon: IconButton(
        onPressed: () {
          print('Valor de la caja de texto?');
        },
        icon: const Icon(Icons.send),
      ),
    );

    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        decoration: inputDecoration,
        onFieldSubmitted: (value) {
          print('Submit value: $value');
        },
        onChanged: (value) {
          print('Changed: $value');
        },
      ),
    );
  }
}
