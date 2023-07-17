import 'package:flutter/material.dart';

class AccountTab3 extends StatelessWidget {
  const AccountTab3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                color: Colors.orange[200],
              ),
            );
          }
        ),
      );
    }
}