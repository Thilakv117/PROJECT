import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sample_work/login_Page/signup.dart';
import 'package:sample_work/second_Screen/SecondScreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String loginUrl = "https://reqres.in/api/login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Text(
          'LOGIN',
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
              'Welcome , login contiune',
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
            ElevatedButton(
              onPressed: () {
                login();
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              child: Row(
                children: const [Text('Sign up'), Icon(Icons.arrow_forward)],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()),
                );
              },
              style: ElevatedButton.styleFrom(fixedSize: Size(103, 10)),
            ),
          ],
        ),
      ),
    );
  }

  login() async {
    var url = Uri.parse(loginUrl);
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
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SecondScreen()),
      );
    }
  }
}
