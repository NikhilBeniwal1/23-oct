import 'dart:html';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
//text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  void signUserin() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          //logo
          const Icon(
            Icons.lock,
            size: 100,
          ),
          const SizedBox(
            height: 50,
          ),

          Text(
            "Wellcome back you\'ve been missed!",
            style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
          ),
          const SizedBox(
            height: 50,
          ),

          //username textfield
          MyTextField(
            controller: usernameController,
            hintText: "username",
            obscureText: false,
          ),
          const SizedBox(
            height: 15,
          ),

          //password textfield
          MyTextField(
            controller: passwordController,
            hintText: "password",
            obscureText: true,
          ),
          const SizedBox(
            height: 10,
          ),
          //forget password
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "forgot password",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          //sing in button
          MyButton(
            onTop: signUserin,
          ),
          const SizedBox(
            height: 20,
          ),

          // or continue with
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                ),
                Text("continue with"),
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),

          // google + apple sing in buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey.shade200),
                  child: Image.asset(
                    "assets/logos/google.png",
                    height: 80,
                    width: 80,
                  )),
              SizedBox(
                width: 10,
              ),
              Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey.shade200),
                  child: Image.asset(
                    "assets/logos/apple_logo.png",
                    height: 80,
                    width: 80,
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          //Register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Not a member ?"),
              SizedBox(
                width: 5,
              ),
              Text(
                "Register now",
                style: TextStyle(color: Colors.blue),
              )
            ],
          )
        ],
      ),
    );
  }
}
