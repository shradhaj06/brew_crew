// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';
class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor:  Color.fromARGB(255, 187, 114, 88),
        elevation: 0.0,
        title: Text('Sign In to Brew Crew'),

      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: ElevatedButton(onPressed: () async{
dynamic result = await _auth.signInAnon();
if(result ==null)
{
  print("error");
}
else{
  print('signed in');
print(result);}
        },
        child: Text("Sign in anon")),
      ),
      
    );
  }
}