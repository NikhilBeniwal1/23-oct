import 'package:flutter/material.dart';
import 'package:planmytrip/Home_page.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      //backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/profile.jpg"),
                child: Text(""),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Nikhil Beniwal"),
          ],
        ),
      ),
    );
  }
}

/*
// import the necessary packages
import 'package:flutter/material.dart';

// create a class that extends StatelessWidget
class PopMenuExample extends StatelessWidget {
  // define the menu items as constants
  static const String item1 = 'Item 1';
  static const String item2 = 'Item 2';
  static const String item3 = 'Item 3';

  // define a list of menu items
  final List<String> menuItems = [item1, item2, item3];

  // define a method to handle the selection of menu items
  void handleSelection(String value) {
    switch (value) {
      case item1:
        // do something for item 1
        break;
      case item2:
        // do something for item 2
        break;
      case item3:
        // do something for item 3
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pop Menu Example'),
      ),
      body: Center(
        child: PopupMenuButton<String>(
          // use the list of menu items to build the menu
          itemBuilder: (context) {
            return menuItems.map((item) {
              return PopupMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList();
          },
          // use the handleSelection method to handle the selection
          onSelected: handleSelection,
          // use an icon button as the child of the popup menu button
          child: IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
*/
