import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        titleTextStyle: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shop',
              ),
              Row(
                children: [Icon(Icons.calendar_today), Icon(Icons.menu)],
              )
            ],
          ),
        ),
      ),
      
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(5),
              color: Colors.grey[400],
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey[500],
                  ),
                  Container(
                    child: Text(
                      'Search',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                  )
                ],
              ),
            ),
          ),

          // Shop grid

          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    color: Colors.pink[100],
                  ),
                );
              }
            ),
          )
        ],
      ),
    );
  }
}
