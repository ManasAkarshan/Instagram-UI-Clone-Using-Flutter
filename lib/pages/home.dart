import 'package:flutter/material.dart';
import 'package:insta_ui_clone/utils/bubble_stories.dart';
import 'package:insta_ui_clone/utils/user_posts.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List<String> people = [
    'Ashish',
    'Thronix',
    'ManasR',
    'Jatesh',
    'Shiva',
    'Utkarsh',
    'Amar'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Instagram',
                style: TextStyle(color: Colors.black),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.share,
                  color: Colors.black,
                )
              ])
            ],
          ),
        ),
        body: Column(
          children: [
            // STORIES
            SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index){
                  return BubbleStories(text: people[index]);
                }
              ),
            ),

            // POSTS
            Expanded(
              child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index){
                  return UserPosts(userName: people[index]);
                }
              ),
            )
          ],
        )
      );
  }
}
