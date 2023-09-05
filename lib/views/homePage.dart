import 'package:flutter/material.dart';

import '../widgets/restaurentCard.dart';

void _handleFabClick() {
  print("clicked");
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.blue),
        title: const Row(
          children: [
            Icon(Icons.house),
            SizedBox(width: 10),
            Text(
              "PeroPerty.com",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      // backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Welcome\nSaurav Gaur",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  )),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Recommended by Us:",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 250, // Adjust the height as needed
                child: PageView.builder(
                  itemCount: 5, // Replace with the actual number of items
                  itemBuilder: (BuildContext context, int index) {
                    // Replace this with your recommended item widget
                    return RestaurentCard(index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: _handleFabClick,
        child: Icon(Icons.post_add),
      ),
    );
  }
}
