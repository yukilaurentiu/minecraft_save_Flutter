import 'dart:io';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mcsaver_package/mcsaver_package.dart';
import 'package:app/init.dart';

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
  

  // Future<String> getUsbs() async {
  //   var result = await Process.run('ls', ['/media/yuki/']);
  //   String usbs = result.stdout;
  //   return usbs;
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mincraft Saver'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Init(menu),
        )
      )
    );
  }
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
