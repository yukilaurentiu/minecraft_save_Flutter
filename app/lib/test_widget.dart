import 'package:flutter/material.dart';

class MyAppTest extends StatefulWidget {
  const MyAppTest({Key? key}) : super(key: key);

  @override
  State<MyAppTest> createState() => _MyAppState();
  
}

class _MyAppState extends State<MyAppTest> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }
  
  Widget build(BuildContext context) {

    if(_active) {
      return ElevatedButton(
                // style: raisedButtonStyle,
                onPressed: () {_handleTap();},
                child: const Text("Button"),
              );
    }
    return ElevatedButton(
                // style: raisedButtonStyle,
                onPressed: () {_handleTap();},
                child: const Text("hello"),
              );
  }
}