import 'dart:html';
import 'dart:io';
import 'main.dart';
import 'BackgroundImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
  }

  class MyApp extends StatelessWidget {
     MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(

        ),
      );
    }
  }
  class MyHomePage extends StatefulWidget {
     MyHomePage({Key? key}) : super(key: key);

    @override
    _MyHomePageState createState() => _MyHomePageState();
  }

  class _MyHomePageState extends State<MyHomePage> {
    @override
    var fa=GlobalKey<FormState>(); //key of Form
    TextEditingController email =TextEditingController();

    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child:Container(
          constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
      image: DecorationImage(
      image: NetworkImage("https://mixkit.imgix.net/videos/preview/mixkit-animation-of-purple-background-and-white-triangles-99548-0.jpg?q=80&auto=format%2Ccompress"),
      fit: BoxFit.cover)
      ),

            child: Center(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Hello', style: TextStyle(fontSize: 90, color: Colors.white),),
                  Text ('Sign into your account', style: TextStyle(fontSize: 20, color: Colors.white),),

                        Container(
                          padding: EdgeInsets.all(30),
                          width: 900,
                          child: Form(
                            key: fa,
                              child: TextFormField(

                                controller: email,
                                validator: (String?val){
                                  if (!(val!.contains('@gmail.com'))){
                                    return "E-mail must contain @gmail ";
                                  }
                                  else{return null;}
                                },
                                decoration: InputDecoration(
                                 fillColor: Colors.white, filled:true ,
                                  prefixIcon: Icon(Icons.email),
                                  labelText: 'E-mail',
                                  hintText: 'Enter your mail',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    gapPadding: 10,
                                  )
                                ),
                          )
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(30),
                          width: 900,
                          child: Form(
                              child: TextFormField(
                                validator: (dynamic?p){
                                  if (!(p < 5)){
                                    return "Password can't be less than 5 numbers ";
                                  }
                                  else{return null;}
                                },
                                decoration: InputDecoration(
                                 fillColor: Colors.white, filled:true ,
                                  prefixIcon: Icon(Icons.lock),
                                  suffixIcon: Icon(Icons.remove_red_eye),
                                  labelText: 'Password',
                                  hintText: 'Enter your password',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    gapPadding: 10,
                                  )
                                ),
                          )
                          ),
                        ),

                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text('Forgot your password?', style: TextStyle(color: Colors.white),),
                  ),

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Sign in', style: TextStyle(color: Colors.white, fontSize: 20),),
                        IconButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_){return const myapp() ;}));

                        }, icon: Icon(Icons.arrow_forward, color: Colors.white,)),
                      ],
                    ),
                  ),

                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?",style: TextStyle(color:Colors.white ),),
                          SizedBox(width:3,),
                          GestureDetector(child:
                          Text('Create',style: TextStyle(color:Colors.white, decoration: TextDecoration.underline )),
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (_){
                                return Second();}));

                            },)


                        ],
                      ),
                    )

                ],
              )
            )
          ),
      ) ,
      );
    }
  }
