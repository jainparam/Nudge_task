

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( title: const Text('HOME PAGE'),
        centerTitle: true,
        backgroundColor: Colors.transparent
      ),

      body: const Center(
        child: Text('This is the Home Page'),
      ),
    );
  }
}
