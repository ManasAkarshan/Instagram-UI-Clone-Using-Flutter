import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  const UserPosts({super.key, required this.userName});
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Name + Circle avatar + menu button
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(userName)
                ],
              ),
              Icon(Icons.menu),
            ],
          ),
        ),
        
        // Post Image
        Container(
          height: 350,
          color: Colors.grey,
        ),
        
        // Like button + comment button + share buttons + etc
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.favorite),
                  SizedBox(width: 5,),
                  Icon(Icons.chat_bubble_outline),
                  SizedBox(width: 5,),
                  Icon(Icons.share),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.bookmark),
            )
          ],
        ),
       
        // LIked by text 
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text('Liked by'),
              Text(' mohitmo_', style: TextStyle(fontWeight: FontWeight.w600),),
              Text(' and'),
              Text(' 10 others', style: TextStyle(fontWeight: FontWeight.w600),),
            ],
          ),
        ),

        // Comments
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'krontengaming',
                  style: TextStyle(fontWeight: FontWeight.bold)
                ),
                TextSpan(
                  text: ' Not goona work this time :), see you late, have fun and enjoy your life till then '
                )
              ]
            ),
          )
        ),
        SizedBox(height: 16,)
      ],
    );
  }
}
