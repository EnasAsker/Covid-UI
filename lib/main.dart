import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}
class myapp extends StatelessWidget {
   myapp({Key? key}) : super(key: key);

   List <Widget> screens= [
     Center(
       child: IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt))     ),
     Center(
       child: Text('Screen 2',style: TextStyle(fontSize: 40),),
     ),
     Center(
       child: Text('Screen 3',style: TextStyle(fontSize: 40),),
     ),
   ];

  int index=0;

  @override

  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,

      child: Scaffold(
        appBar: AppBar(backgroundColor:Color.fromRGBO(0,128,105, 1.0),
        title: Text('WhatsApp Chat'),
          bottom: TabBar(
            onTap: (val){
              setState(){
                index=val;
              }
            },
            tabs: [
              Tab(text: 'Chat',),
              Tab(text: 'Status'),
              Tab(text: 'Calls'),
            ],

          ),
          actions: [
            Row(
              children: [IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
              IconButton(icon: Icon(Icons.message, color: Colors.white,),
                  onPressed: () {}),
            ],),
          ],
        ),
        drawer: Drawer(
          child: Stack(
            children: [
              Container(
                height: 200,
                alignment: Alignment.topCenter,
                color: Colors.lightBlue,
              child:  Container(
                padding: EdgeInsets.only(top: 15, left: 15, bottom: 15),
                alignment: Alignment.topLeft,
                child: CircleAvatar(radius: 40, backgroundColor: Colors.blueAccent,),),
              ),

              Container(
                padding: EdgeInsets.only(top: 120, left: 15),
                child: Column(
                  children: [
                    Container(
                      child:Align(alignment: Alignment.centerLeft,
                      child:Text('Enas Mohamed',style: TextStyle(color: Colors.white, fontSize: 15),),
                      ),
                    ),

                  Container(child:Align(alignment: Alignment.centerLeft,
                  child: Text('enas10918@gmail.com',style: TextStyle(color: Colors.white, fontSize: 15),),
                  )


                  ),
                ],),)
            ],
          ),
        ),

        body: ListView(
          children: [
            buildListTile(CircleAvatar(radius: 27,backgroundColor: Colors.deepOrange,),'Mohamed Hosny',Row(children: [Icon(Icons.keyboard_voice, color: Colors.grey,), Text('0:07')], ), Column(children: [Text('1:30 PM', style: TextStyle(color: Colors.green),),CircleAvatar(radius: 10,backgroundColor: Colors.green, child: Text('3',style: TextStyle(color: Colors.white),),), ],)),
            Divider(),
            buildListTile(CircleAvatar(radius: 27, backgroundColor: Colors.grey,), 'Mohamed Mosa', Row(children: [Icon(Icons.check, color: Colors.grey,), Icon(Icons.camera_alt, color: Colors.grey,), Text('Photo', style: TextStyle(color: Colors.grey),)],), Text('Friday', style: TextStyle(color: Colors.grey),)),
            Divider(),
            buildListTile(CircleAvatar(radius: 27, backgroundColor: Colors.yellow,), 'Mohamed Samir', Row(children: [Icon(Icons.check, color: Colors.grey,), Text('إزيك يا هندسة أخبارك إيه؟')],), Text('11:45 AM', style: TextStyle(color: Colors.grey),)),
            Divider(),
            buildListTile(CircleAvatar(radius: 27,backgroundColor: Colors.lightGreenAccent,), 'Ahmed Lotfy', Row(children: [Icon(Icons.done_all_outlined, color: Colors.lightBlueAccent,), Text('متنساش الفلاشة وانت جاي الكلية')],), Text('1:12 AM', style: TextStyle(color: Colors.grey),)),
            Divider(),
            buildListTile(CircleAvatar(radius: 27,backgroundColor: Colors.black,), 'Emad Gamal', Text('You are a great man', style: TextStyle(color: Colors.black),), Column(children: [Text('11:45 AM', style: TextStyle(color: Colors.green),),CircleAvatar(radius: 10,backgroundColor: Colors.green, child: Text('1',style: TextStyle(color: Colors.white),),), ],)),
            Divider(),
            buildListTile(CircleAvatar(radius: 27, backgroundColor: Colors.lightBlueAccent,), 'Farah', Row(children: [Icon(Icons.emoji_emotions_outlined, color:Colors.grey,), Text('Sticker')],), Column(children: [Text('11:45 AM', style: TextStyle(color: Colors.green),),CircleAvatar(radius: 10,backgroundColor: Colors.green, child: Text('2',style: TextStyle(color: Colors.white),),), ],)),
            Divider(),
            buildListTile(CircleAvatar(radius: 27,backgroundColor: Colors.deepPurpleAccent,), 'Shrouk', Row()),

                Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.bottomRight,
                  child:IconButton(icon: Icon(Icons.camera_alt), onPressed: () {}
                  ),
                )
          ],
        ),
        )
    );
  }

  ListTile buildListTile(Widget wid, String name, Widget sub, [Widget? w]) {
    return ListTile(
            leading: (wid),
            title: Text(name,  style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: sub,
            trailing:w
          );
  }
}
