// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:brew_crew/screens/authenticate/sign_in.dart';
import 'package:flutter/material.dart';
class Authenticate extends StatefulWidget {
   Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SignIn(),

    );
  }
}

