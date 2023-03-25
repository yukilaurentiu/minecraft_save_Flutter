import 'package:flutter/material.dart';
import 'package:mcsaver_package/src/menu.dart';

class Init extends StatefulWidget{
  const Init(this.menu);
   final Menu menu;

  @override
  State createState() => _State(menu);
}

class _State extends State<Init>{
   _State(this.menu);
    final Menu menu;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: FutureBuilder<int>(
            future: menu.init(),
            builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
              if (snapshot.hasData) {
                return Text(menu.data.usbs);
              } 
              else if (snapshot.hasError) {
                // return Text("${snapshot.error}");
                return Text("error");
              }
              else {
                return const CircularProgressIndicator();
              }
            }
          ),
        )
      ),
    );
  }
}