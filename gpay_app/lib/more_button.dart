import 'package:flutter/material.dart';

class MoreButton extends StatelessWidget {
  final VoidCallback onPressed;
  const MoreButton({Key? key, required this.onPressed}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 60,
          width: 60,
          decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(40), color: Colors.white,border: Border.all(color: Colors.lightBlueAccent,width: 2)),
          child: TextButton(
              onPressed: onPressed,
              child: const Icon(Icons.keyboard_arrow_down_sharp)
        ),),
        const SizedBox(height: 8,),
        const Text("More",maxLines: 1,overflow: TextOverflow.ellipsis,),
      ],
    );
  }
}
