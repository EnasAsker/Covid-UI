import 'package:flutter/material.dart';
void main() async
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage('https://th.bing.com/th/id/R.1a4087b200fe9bf1cb9ef19343672c58?rik=tLZe7SP0ufdT2g&pid=ImgRaw&r=0'),
              fit: BoxFit.cover
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black12,
                    Colors.black87,
                  ]
              )
          ),
          child: Scaffold(
            backgroundColor:Colors.transparent,
            appBar: AppBar(
              title: Text('Backgroung Image'),
              centerTitle: true,
              backgroundColor: Colors.black26,
            ),
            body: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(32),
              child: TextField(decoration: InputDecoration(
                fillColor: Colors.white, filled:true, hintText: 'Email', border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                gapPadding: 10,
              ),
              ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
