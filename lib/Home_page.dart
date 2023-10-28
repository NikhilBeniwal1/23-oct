import 'package:flutter/material.dart';

import 'Info_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green.shade200,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Planing My Trip'),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                height: 100,
                child: InkWell(
                    onTap: () {
                      var Mname = nameController.text.toString();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  InfoPage(index: index + 1)));
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          "${index + 1}",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    )),
              );
            })

        /*Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: nameController,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              var Mname = nameController.text.toString();
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return InfoPage(Name: Mname);
              }));
            },
            child: const Text("Info page"),
          ),
        ],
      ),*/
        );
  }
}
