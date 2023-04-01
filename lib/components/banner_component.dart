import 'package:flutter/material.dart';
import 'package:nudge/screens/contact_screen.dart';

import 'custom_component.dart';

class BannerComponent extends StatefulWidget {
  @override
  _BannerComponentState createState() => _BannerComponentState();
}

class _BannerComponentState extends State<BannerComponent> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('CONTACT PAGE',textAlign: TextAlign.center, ), centerTitle: true ,backgroundColor: Colors.transparent,
      ),
      body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [

        CustomComponent(
        key: ValueKey('myCustomComponent'),
      child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const NewScreen()),);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: <Widget>[

                Hero(
                  tag: 'banner',
                  child: SizedBox(
                    width: double.infinity,
                    height: 150,
                    child: ElevatedButton(onPressed: () {

                      Navigator.push(context, MaterialPageRoute(builder: (context) => NewScreen()),);
                    },
                      child: const Text('BANNER' , style: TextStyle(fontSize: 30)),),
                  ),
                ),
              ],
            ),
          )

      ),
    ),
          ],
        )
    );
  }
}
