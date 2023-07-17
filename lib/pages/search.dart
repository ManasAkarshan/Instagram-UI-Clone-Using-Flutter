import 'package:flutter/material.dart';

import '../utils/explore_grid.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Container(
            padding: EdgeInsets.all(7),
            color: Colors.grey[400],
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.grey[500],),
                Container(
                  child: Text('Search', style: TextStyle(color: Colors.grey[500]),),
                )
              ],
            ),
          ),
        ),
      ),
      body: const ExploreGrid(),
    );
  }
}