import 'package:flutter/material.dart';
class RestaurentCard extends StatelessWidget{

  final int index;

  RestaurentCard(@required this.index);

  @override
  Widget build(BuildContext context) {
    return Card(
      // margin: EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          child: Column(
            children: [
              Image.asset('assets/images/login.png')
            ],
          ),
        )
      ),
    );
  }

}