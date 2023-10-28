import 'package:flutter/material.dart';
import 'package:planmytrip/Home_page.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade200,
          title: const Text("Info_page"),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.green.shade200,
          child: Center(
              child: Text(
            "This is info page",
            style: TextStyle(fontSize: 40),
          )),
        ));
  }
}
