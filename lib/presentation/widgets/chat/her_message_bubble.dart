import 'package:flutter/material.dart';

import 'package:yes_no/domain/entities/message.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({
    super.key,
    required this.message,
  });

  final Message message;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: colors.tertiaryContainer,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Text(
            message.text,
            style: TextStyle(
              color: colors.onTertiaryContainer,
            ),
          ),
        ),
        const SizedBox(height: 5),
        _ImageBubble(
          imageUrl: message.imageUrl,
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble({
    this.imageUrl,
  });

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width * 0.7;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        imageUrl ??
            'https://yesno.wtf/assets/no/16-b66d2db7543f5259c86abc166d6901cf.gif',
        width: width,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }

          return Container(
            width: width,
            height: 150,
            color: Colors.black12,
            child: const Center(
              child: Text('Her 💕 is sending an image...'),
            ),
          );
        },
      ),
    );
  }
}
