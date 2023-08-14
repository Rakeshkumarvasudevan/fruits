import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String name;
  final dynamic color;
  final String firstLetter;

  const ProfileWidget(
      {super.key, required this.name, required this.firstLetter, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 60,
          width: 60,
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(40), color: color),
          child: Center(
              child: Text(
            firstLetter,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23),
          )),
        ),
        const SizedBox(height: 8,),
        Text(name,maxLines: 1,overflow: TextOverflow.ellipsis,),
      ],
    );
  }
}
