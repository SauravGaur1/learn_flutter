import 'package:flutter/material.dart';
import 'package:flutter_start/widgets/drawer.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: .6,
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text("Title", style: TextStyle(color: Colors.black),),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Container(
          child: Text("Welcome Saurav Gaur"),
        ),
      ),
    );
  }
}