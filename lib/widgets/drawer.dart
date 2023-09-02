import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              currentAccountPicture: (
                CircleAvatar(
                  backgroundImage: NetworkImage("https://media.licdn.com/dms/image/D5603AQHKXCwaa5Oy7Q/profile-displayphoto-shrink_100_100/0/1685719997480?e=1698883200&v=beta&t=JOfKq4fY2uZis3-O6uG1lEj0hxmkfHo5-O8kjHxWeg4"),
                )
              ),
                accountName: Text("Saurav Gaur")
                , accountEmail: Text("sgaur70155@gmail.com")),
            ListTile(
              style: ListTileStyle.list,
              leading: Icon(Icons.home),
              title: Text("Home", style: TextStyle(color: Colors.grey),),
            ),
            ListTile(
              style: ListTileStyle.list,
              leading: Icon(Icons.shopping_cart),
              title: Text("Cart", style: TextStyle(color: Colors.grey),),
            ),
            ListTile(
              style: ListTileStyle.list,
              leading: Icon(Icons.settings),
              title: Text("Settings", style: TextStyle(color: Colors.grey),),
            ),
            ListTile(
              style: ListTileStyle.list,
              leading: Icon(Icons.logout),
              title: Text("Logout", style: TextStyle(color: Colors.grey),),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text("Version 1.0.0"),
            )
          ],
        ),
    );
  }
}