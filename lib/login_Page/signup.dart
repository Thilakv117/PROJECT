import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sample_work/second_Screen/SecondScreen.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String signup = "https://reqres.in/api/register";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
       title: Text(
          'Sign up',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,

      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(width: 4000, height: 100),
            const Text(
              'Sign-up to register',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: 250,
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: 'Email',
                ),
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: 250,
              child: TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
              ),
            ),
            const SizedBox(height: 40),
            const SizedBox(height: 40),
           
            const SizedBox(height: 40),
            ElevatedButton(
              child: Text('Sign up'),
              onPressed: () {
                signUp();
              },
              style: ElevatedButton.styleFrom(fixedSize: const Size(100, 20)),
            ),
          ],
        ),
      ),
    );
  }

  signUp() async {
    var url = Uri.parse(signup);
    var response = await http.post(url, body: {
      "email": emailController.text,
      "password": passwordController.text
    });
    var responseJson = jsonDecode(response.body);
    if (responseJson["token"] == null) {
      var snackBar = SnackBar(
        content: Text(responseJson["error"]),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      var snackBar = const SnackBar(
        content: Text("Successfully signed up"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Navigator.pop(context);
    }
  }
}
