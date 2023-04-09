import 'dart:io';
import 'dart:convert';

// import 'package:app/test_widget.dart';

import 'package:app/material.dart';
import 'package:flutter/material.dart';
import 'package:mcsaver_package/mcsaver_package.dart';
import 'package:app/mc_init.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State createState() => _State();
}

class _State extends State<MyApp>{

  var menu = Menu();
  bool isStarted = false;
  bool hasUsb = false;

  void handleTap() {
    setState(() {
      isStarted = true;
    });
  }

  void handleHasUsb(bool hasUsbs) {
    setState(() {
      hasUsb = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mainMaterial(),
      home: Scaffold(
      appBar: AppBar(
        title: const Text('Mincraft Saver'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[ 
              const Padding(
                padding:  EdgeInsets.all(16.0),
                child:  Text('Welcome back! Please insert USB and save mincraft data!')
              ),
              getStarted(isStarted, handleTap),
              startCheckUsbs()
            ])
        ),
      )
      )
    );
  }



   Widget startCheckUsbs() {
    if(isStarted){
      return McInit(menu, handleHasUsb);
    }
    return const Text('please insert usb');

  }
}

 Widget getStarted(a, b) {
    if(a){
      return ElevatedButton(
      // style: raisedButtonStyle,
        onPressed: () {b();},
        child: const Text('Check USB'),
      );
    }
    return ElevatedButton(
      // style: raisedButtonStyle,
      onPressed: () {b();},
      child: const Text('Check USB'),
    );
  }
     // return FutureBuilder<int>(
                //   future: menu.stepCheckUsb(),
                //   builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                //     if (snapshot.hasData) {
                //       return Text('${menu.data.usbs}');
                //     } 
                //     else if (snapshot.hasError) {
                //       return Text("${snapshot.error}");
                //     }
                //     else {
                //       return const CircularProgressIndicator();
                //     }
                //   }
                // );

  // return const Padding(
    //     padding:  EdgeInsets.all(16.0),
    //     child:  Text('We cannot find any USB',
    //     style: TextStyle(fontSize: 32.0, color: Color.fromARGB(255, 51, 122, 180)))
    //   );