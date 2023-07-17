import 'package:flutter/material.dart';
import 'package:insta_ui_clone/utils/account_tab1.dart';

import '../utils/account_tab2.dart';
import '../utils/account_tab3.dart';
import '../utils/account_tab4.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              // Profile Picture
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle
                      ),
                    ),

              
                    // Following and followers number
                    const Column(
                      children: [
                        Text('245', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                        Text('Posts'),
                      ],
                    ),
                    const Column(
                      children: [
                        Text('2545',  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                        Text('Followers'),
                      ],
                    ),
                    const Column(
                      children: [
                        Text('394', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                        Text('Following'),
                      ],
                    )
                  ],
                ),
              ),

      
              // Name and Bio
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("ManasAka", style: TextStyle(fontWeight: FontWeight.w600),),
                    SizedBox(height: 3,),
                    Text('I like creating things'),
                    SizedBox(height: 3,),
                    Text("youtube.com", style: TextStyle(color: Colors.blue),)
                  ],
                ),
              ),

      
              // Different buttons like edit etc
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(4)
                        ),
                        child: const Center(child: Text('Edit profile'),),
                      ),
                    ),
                    SizedBox(width: 3,),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(4)
                        ),
                        child: const Center(child: Text('Insights'),),
                      ),
                    ),
                    SizedBox(width: 3,),
                    Expanded(
                      child: Container(
                          padding: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(4)
                        ),
                        child: const Center(child: Text('Ad tools'),),
                      ),
                    )
                  ],
                ),
              ),

      
              // Highlights
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text('Story 1')
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text('Story 2')
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text('Story 3')
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6,),


              // Posts and other 
              const TabBar(
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    icon: Icon(Icons.grid_3x3_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.video_call),
                  ),
                  Tab(
                    icon: Icon(Icons.shop),
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                  ),
                ],
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    AccountTab1(),
                    AccountTab2(),
                    AccountTab3(),
                    AccountTab4(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}