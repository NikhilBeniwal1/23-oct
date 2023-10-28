import 'package:flutter/material.dart';
import 'package:planmytrip/Home_page.dart';

// 26 OCT 27:00

class InfoPage extends StatelessWidget {
  int index;
  InfoPage({required this.index});

  @override
  Widget build(BuildContext context) {
    var Name = "";
    Color mColor = Colors.white;
    if (index == 1) {
      Name = "Red Fort";
      mColor = Colors.red.shade400;
    } else if (index == 2) {
      Name = "India Gate";
      mColor = Colors.orange.shade400;
    } else if (index == 3) {
      Name = "TajMahal";
      mColor = Colors.grey.shade400;
    } else if (index == 4) {
      Name = "Hwa-mahal";
      mColor = Colors.pink.shade400;
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade200,
          title: const Text("Info page"),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: mColor,
          child: Center(
              child: Text(
            "Wellcome to, $Name",
            style: TextStyle(fontSize: 40),
          )),
        ));
  }
}
