import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Screens/page2.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration:const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://static.vecteezy.com/system/resources/previews/002/598/457/large_2x/covid-19-family-fight-vector.jpg'),
            fit: BoxFit.cover
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 300, bottom: 8),
            child: Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              width: 950,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    const Text('COVID-', style: TextStyle(fontSize: 60, color: Colors.black,
                        decoration: TextDecoration.none),),
                    const Text('19', style: TextStyle(fontSize: 60, color: Color(0xff97CB9A),
                        decoration: TextDecoration.none),)
                  ],),
                 const Text("Lorem ipsum is simply dummy text of printing and typesetting industry."
                     "Lorem ipsum has been the industry's standard dummy text ever since the ", style:
                   const TextStyle(fontSize:25, color: Colors.black,decoration: TextDecoration.none,),textAlign:TextAlign.center,),
                  ElevatedButton(child: Text('Get Started', textAlign: TextAlign.center, style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_){
                      return page2();}));
                  },
                    style: ElevatedButton.styleFrom(
                      primary:const Color(0xff97CB9A),
                      minimumSize:const Size(400, 70),
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                    ),
                  )
                ],
              ),
            ),
          ),
      ),
      )
    );
  }
}
