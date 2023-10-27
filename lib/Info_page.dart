import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Info_page"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red.shade300,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Text("sdjfkj");
              }));
            },
            child: Text("Info page"),
          ),
        ),
      ),
    );
  }
}
