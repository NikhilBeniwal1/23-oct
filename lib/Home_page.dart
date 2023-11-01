import 'package:flutter/material.dart';

import 'Info_page.dart';
import 'Profile.dart';

//45:30  27 oct

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var nameController = TextEditingController();
  List<Map<String, dynamic>> cityList = [
    {
      "city": "Hisar",
      "img": "assets/images/hisar.jpg",
    },
    {
      "city": "Banaras",
      "img": "assets/images/banaras.jpg",
    },
    {
      "city": "Jodhpur",
      "img": "assets/images/jodhpur.jpg",
    },
    {
      "city": "Bhangarh",
      "img": "assets/images/bhan.jpg",
    },
    {
      "city": "Delhi",
      "img": "assets/images/delhi.jpg",
    },
    {
      "city": "Mumbai",
      "img": "assets/images/mumbai.jpg",
    },
    {
      "city": "Pune",
      "img": "assets/images/pune.jpg",
    },
    {
      "city": "Goa",
      "img": "assets/images/goa.jpg",
    },
    {
      "city": "Agra",
      "img": "assets/images/agra.jpg",
    },
    {
      "city": "Jaipur",
      "img": "assets/images/jaipur.jpg",
    },
    {
      "city": "Lonavala",
      "img": "assets/images/lonavala.jpg",
    },
    {
      "city": "Nainital",
      "img": "assets/images/nainital.jpg",
    },
  ];
  List<Map<String, dynamic>> listPopupMenuItems = [
    {"Icon": Icons.account_box, "itemName": "Profile"},
    {"Icon": Icons.favorite, "itemName": "favorite"},
    {"Icon": Icons.remove_circle, "itemName": "Remove Adds"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green.shade200,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(8),
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8)),
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return MyProfile();
                          }));
                        },
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage("assets/images/profile.jpg"),
                          child: Text(""),
                        ),
                      ),
                      Text(
                        "Nikhil",
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      )
                    ],
                  )),
              InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('settings'),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Share This App'),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text('favorite'),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.remove_circle),
                  title: Text('Remove adds'),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.grey.shade300,
          // foregroundColor: Colors.white,
          title: const Text('Trip to'),
          centerTitle: true,
          shadowColor: Colors.grey,
          elevation: 3,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            // IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            PopupMenuButton(
                //color: Colors.yellow,
                shadowColor: Colors.grey,
                elevation: 11,
                //tooltip: "options",
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                // color: Colors.grey.shade300,
                itemBuilder: (_) {
                  return listPopupMenuItems
                      .map((eachData) => PopupMenuItem<String>(
                          onTap: () {
                            if (eachData["itemName"] == "Profile") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyProfile()));
                            }
                          },
                          child: Row(
                            children: [
                              Icon(
                                eachData["Icon"],
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(eachData["itemName"])
                            ],
                          )))
                      .toList();
                })
          ],
        ),
        body: ListView.builder(
            itemCount: cityList.length,
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
                              builder: (context) => InfoPage(
                                    index: index + 1,
                                    cityName: cityList[index]["city"],
                                    Imageurl: cityList[index]["img"],
                                  )));
                    },
                    child: Center(
                      child: ListTile(
                        leading: Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(cityList[index]["img"]),
                                  fit: BoxFit.cover),
                            )),
                        title: Text(
                          cityList[index]["city"],
                          style: TextStyle(fontSize: 20),
                        ),
                        trailing: Text(
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
