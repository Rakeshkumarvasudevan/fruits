import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final String name;

  const CircularButton({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey.shade700,
          width: 1.0,
        ),
      ),
        child: TextButton(onPressed: () {}, child: Text(name)));
  }
}
