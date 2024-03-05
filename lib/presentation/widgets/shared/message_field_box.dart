import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({
    super.key,
    required this.onValue,
  });

  final void Function(String) onValue;

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlinedInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
      borderRadius: BorderRadius.circular(20),
    );

    void submitForm() {
      onValue(textController.text);

      textController.clear();
      focusNode.requestFocus();
    }

    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        focusNode: focusNode,
        controller: textController,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          hintText: 'End your message with a "?"',
          enabledBorder: outlinedInputBorder,
          focusedBorder: outlinedInputBorder,
          filled: true,
          suffixIcon: IconButton(
            onPressed: submitForm,
            icon: const Icon(Icons.send),
          ),
        ),
        onTapOutside: (event) => focusNode.unfocus(),
        onFieldSubmitted: (value) {
          submitForm();
        },
      ),
    );
  }
}
