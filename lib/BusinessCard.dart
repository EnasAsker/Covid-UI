import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main (){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  bool hi=false;

  void doSomething(String buttonName) {
    if (buttonName == "MALE") {
      if (hi = false) {
        hi = true;
      } else {
       hi = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
     RaisedButton(
       shape:RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(10)),
         color: Colors.pink,
          onPressed: () => setState(() => hi = !hi),
          child: Column(
            children: [
              Icon(Icons.male, size: 55, color: Colors.white),
              Text('MALE'
                , style: TextStyle(color: Colors.grey, fontSize: 15),
              )
            ],
          )),
    );
  }
}
