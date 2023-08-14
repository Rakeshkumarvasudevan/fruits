import 'package:flutter/material.dart';

class Promotion extends StatelessWidget {
  final String tagName;
  final dynamic image;

  const Promotion({super.key, required this.tagName, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
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
                color: Colors.white),
            child: Center(child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(
                image: AssetImage("assets/$image.png"),fit: BoxFit.cover,
              ),
            )),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            tagName, maxLines: 1,
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
