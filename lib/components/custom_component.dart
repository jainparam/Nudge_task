import 'package:flutter/material.dart';

class CustomComponent extends StatefulWidget {
  final Key key;
  final Widget child;

  CustomComponent({required this.key, required this.child});

  @override
  _CustomComponentState createState() => _CustomComponentState();
}

class _CustomComponentState extends State<CustomComponent> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _isVisible,
      child: Container(
        key: widget.key,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.child,
          ],
        ),
      ),
    );
  }

  void toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }
}

