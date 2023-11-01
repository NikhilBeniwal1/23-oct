import 'package:flutter/material.dart';
import 'package:planmytrip/Home_page.dart';

class InfoPage extends StatelessWidget {
  int index;
  var cityName = "";
  String Imageurl = "";
  InfoPage(
      {required this.index, required this.cityName, required this.Imageurl});

  @override
  Widget build(BuildContext context) {
    Color mColor = Colors.white;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Wellcome to"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("$Imageurl"), fit: BoxFit.cover)),
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              color: mColor,
              child: Center(
                  child: Text(
                "$cityName",
                style: TextStyle(fontSize: 30),
              )),
            ),
          ],
        ));
  }
}
