import 'package:flutter/material.dart';

class ShortCut extends StatelessWidget {
  final String tagName;
  final dynamic icon;

  const ShortCut({super.key, required this.tagName, required this.icon});

  @override
  Widget build(BuildContext context) {
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon,color: Colors.blue,size: 25,),
        SizedBox(width:215,child: Text(tagName,maxLines: 2,style: const TextStyle(fontSize: 16),)),
        const Icon(Icons.arrow_forward_ios_outlined,size: 16,)
        
      ],
    );
  }
}
