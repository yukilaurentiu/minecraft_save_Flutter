import 'package:flutter/material.dart';
import 'package:mcsaver_package/src/menu.dart';


class MyAppTest extends StatefulWidget {
  const MyAppTest({Key? key}) : super(key: key);

  @override
  State<MyAppTest> createState() => _MyAppState();
}

class _MyAppState extends State<MyAppTest> {
  @override
  Widget build(BuildContext context) {
    return const Text('hello');
  }
}

class McInit extends StatefulWidget{
  const McInit(this.menu, this.handleHasUsb, {super.key});
  final Menu menu;
  final handleHasUsb;

  @override
  // State createState() => _State(menu);
  State<McInit> createState() => _McInitState(menu, handleHasUsb);
}

class _McInitState extends State<McInit>{
   _McInitState(this.menu, this.handleHasUsb);
    final Menu menu;
    final handleHasUsb;
  @override
  Widget build(BuildContext context){
    return Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: FutureBuilder<int>(
            future: menu.init(),
            builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
              if (snapshot.hasData) {
                if(menu.data.usbs == "") {
                  handleHasUsb(false);
                }
                handleHasUsb(false);
                return Text(menu.data.usbs);
              } 
              else if (snapshot.hasError) {
                // return Text("${snapshot.error}");
                return const Text("error");
              }
              else {
                return const CircularProgressIndicator();
              }
            }
          ),
        )
      );
  }
}