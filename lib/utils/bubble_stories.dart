import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  const BubbleStories({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration:
                BoxDecoration(color: Colors.grey[400], shape: BoxShape.circle),
          ),
          SizedBox(height: 7,),
          Text(text),
        ],
      ),
    );
  }
}
