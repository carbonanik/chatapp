import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isCurrentUser;

  const ChatBubble({required this.message, required this.isCurrentUser, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isCurrentUser ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.tertiary,
        borderRadius: BorderRadius.only(
          bottomLeft: const Radius.circular(10),
          bottomRight: isCurrentUser ? const Radius.circular(0) : const Radius.circular(10),
          topLeft: isCurrentUser ? const Radius.circular(10) : const Radius.circular(0),
          topRight: const Radius.circular(10),
        ),
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 5,
      ),
      child: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
