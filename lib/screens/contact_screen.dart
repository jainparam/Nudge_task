import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({Key? key}) : super(key: key);
  static const String id = 'new_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text('NEW PAGE') ,
        centerTitle: true,
        backgroundColor: Colors.transparent
      ),

    );
  }
}
