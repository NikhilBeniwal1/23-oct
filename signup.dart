import 'package:flutter/material.dart';

//Text field practice +  signup screen
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: CircleAvatar(
            backgroundColor: Colors.blue,
          ),
        ),
        title: const Text(
          "Anywhere app",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.blue.shade900,
        actions: [
          Text(
            "Home",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            width: 50,
          ),
          Text(
            "join",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            width: 50,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Start For FREE",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Create new account",
              style: TextStyle(fontSize: 26, color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            // login link
            Row(
              children: [
                Text(
                  "Already A Member?",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Log in",
                  style: TextStyle(fontSize: 16, color: Colors.purple),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),

            // name username
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text("First name"),
                      suffixIcon: Icon(Icons.account_circle_rounded),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                              10)), /* contentPadding: EdgeInsets.all(10)*/
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text("Last name"),
                      suffixIcon: Icon(Icons.account_circle_rounded),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 10,
            ),
            //email
            TextField(
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.email),
                  label: Text("Email"),
                  border: OutlineInputBorder()),
            ),

            SizedBox(
              height: 10,
            ),
            //password

            TextField(
              decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    child: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility),
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                  border: OutlineInputBorder(),
                  label: Text("Password")),
              obscureText: _obscureText,
            ),

            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppRoundedBtn(
                    btnname: "Change Method",
                    onTap: () {},
                    bgcolor: Colors.indigo),
                AppRoundedBtn(
                  btnname: "Create Account",
                  onTap: () {},
                  bgcolor: Colors.indigo,
                )
              ],
            ),
          ],
        ),
      ),
      // backgroundColor: Color.fromRGBO(32, 42, 55, 100),
      //backgroundColor: Colors.grey.shade300,
    );
  }
}

class AppRoundedBtn extends StatelessWidget {
  String btnname;
  VoidCallback onTap;
  Color bgcolor;
  double btnwidth;

  AppRoundedBtn(
      {required this.btnname,
      required this.onTap,
      required this.bgcolor,
      this.btnwidth = 200});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(btnname),
      style: ElevatedButton.styleFrom(
          backgroundColor: bgcolor,
          foregroundColor: Colors.white,
          minimumSize: Size(btnwidth, 60)),
    );
  }
}
