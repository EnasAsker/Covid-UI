import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: GridView(

            gridDelegate:
            SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 100, //حجم كل عنصر يبقى كام
                childAspectRatio: 3/2, //النسبة بالطول والعرض في كل عنصر
                mainAxisSpacing: 50,// الطول بين كل صف والتاني
                crossAxisSpacing: 50//المسافة بالعرض بين كل واحد والتاني
            ),

            children: [
              GridTile(child: Container(color: Colors.red,),
                header: FlutterLogo(size: 50,),
                footer: Icon(Icons.favorite),
              ),

              /* Container( padding:EdgeInsets.all(15), color: Colors.red.withOpacity(0.5)),//لونه هيفتح شوية
              Container( padding:EdgeInsets.all(15), color: Colors.red,),
              Container( padding:EdgeInsets.all(15), color: Colors.red,),
              Container( padding:EdgeInsets.all(15), color: Colors.red,),*/
            ],
          ),

        ),

      ),
    );
  }
}
