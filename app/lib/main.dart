import 'package:flutter/material.dart';
import 'package:mcsaver_package/mcsaver_package.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));

}

class MyApp extends StatefulWidget{
  @override
  State createState() => _State();
}

class _State extends State<MyApp>{

  var menu = Menu();
  

  @override
  Widget build(BuildContext context) {
    menu.init();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bar'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Hello'),
              Text("${menu.stepCheckUsb()}"),
            ],
          )),

      ),
    );
  }
}