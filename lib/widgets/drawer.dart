import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://media-exp1.licdn.com/dms/image/C4D03AQG8rWwqIZgFDA/profile-displayphoto-shrink_100_100/0/1623010269909?e=1629331200&v=beta&t=wfUOd7Sex5mH9Z717q3ywShC_TX5lijViISYFrBKYkQ";
    return Drawer(
      child: Container(
        color: Colors.white24,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.white12),
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Shakeel"),
                accountEmail: Text("shakeel@offrode.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.shopping_cart,
                color: Colors.black,
              ),
              title: Text(
                "Shop",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.car_detailed,
                color: Colors.black,
              ),
              title: Text(
                "Brand",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.news_solid,
                color: Colors.black,
              ),
              title: Text(
                "About",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.rectangle_stack_person_crop_fill,
                color: Colors.black,
              ),
              title: Text(
                "Contact",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
