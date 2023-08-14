import 'package:flutter/material.dart';

class TopicWidget extends StatelessWidget {
  final String message;
  const TopicWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Text(
         message,
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}
