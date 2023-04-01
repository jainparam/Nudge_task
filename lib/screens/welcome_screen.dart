import 'package:flutter/material.dart';
import 'package:nudge/components/banner_component.dart';
import 'package:nudge/components/launcher_component.dart';
import 'package:nudge/screens/contact_screen.dart';
import 'package:nudge/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static const String id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text('Control from here', style: TextStyle(),) , centerTitle: true, backgroundColor: Colors.transparent, ),
      backgroundColor: Colors.white70,
      body: Padding(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [

            Hero(
              tag: 'banner',
              child: SizedBox(
                width: double.infinity,
                height: 150,
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BannerComponent()),);

                },
                  child: const Text('BANNER' , style: TextStyle(fontSize: 30)),),


              ),
            ),

            const SizedBox(
              height: 40,
            ),


                Hero(
                  tag: 'launcher',
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LauncherComponent()),);
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 100),
                      backgroundColor: (Colors.lightGreen),
                      shape: const CircleBorder(),
                    ),
                    child: const Text(
                      'Launcher',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),


          ],

        ),

      ),



    );
  }
}
