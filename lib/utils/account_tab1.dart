import 'package:flutter/material.dart';

class AccountTab1 extends StatelessWidget {
  const AccountTab1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: GridView.builder(
        itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                color: Colors.blue[200],
              ),
            );
          }
        ),
      );
    }
  }
