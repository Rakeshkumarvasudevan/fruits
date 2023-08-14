import 'package:flutter/material.dart';

class MoreOptions extends StatelessWidget {
  final String tagName;
  final dynamic icon;

  const MoreOptions({super.key, required this.tagName, required this.icon});

  @override
  Widget build(BuildContext context) {
    String alignTagName = tagName;
    if (alignTagName.split('\n').length < 2) {
      alignTagName += '\n';
    }
    return SizedBox(
      height: 120,
      width: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.blue.shade200),
            child: Center(child: Icon(icon)),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            alignTagName, maxLines: 2,
            overflow: TextOverflow.ellipsis,
            // textAlign: tagName.split('\n').length > 1
            //     ? TextAlign.start
            //     : TextAlign.center,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
