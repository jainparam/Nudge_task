import 'package:flutter/material.dart';
import 'custom_component.dart';


class LauncherComponent extends StatefulWidget {
  @override
  _LauncherComponentState createState() => _LauncherComponentState();
}

class _LauncherComponentState extends State<LauncherComponent> {
  @override
  Widget build(BuildContext context) {
    return CustomComponent(
      key: ValueKey('myCustomComponent'),
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (_) => ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 100),
              child: const AlertDialog(
                alignment: Alignment.center,


                title: Text('Modal', textAlign: TextAlign.center,),

                actions: [
                ],
              ),

            ),
          );
        },
        child:
        Hero(
          tag: 'launcher',
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => const AlertDialog(
                  alignment: Alignment.center,
                  title: Text('Modal', textAlign: TextAlign.center,),
                  actions: [
                  ],
                ),
              );
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


      ),
    );
  }
}
