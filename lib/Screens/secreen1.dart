import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../session/screen2.dart';

double height = 160;
int weight = 60;
int age = 25;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

  bool clr=false;
  bool clr2=false;
  void male(String buttonName) {
    if (buttonName == 'MALE') {
      if (clr = false) {
        clr = true;
      } else {
        clr = false;
      }
    }
  }

  void female(String buttonName) {
    if (buttonName == 'FEMALE') {
      if (clr2 = false) {
        clr2 = true;
      } else{
        clr2 = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff24263B),
      appBar: AppBar(
        backgroundColor: Color(0xff24263B),
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: clr ? Color(0xff313244) : Color(0xff24253D),
                  onPressed: ()=> setState(() => clr = !clr),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: 145,
                    width: 110,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.male, size: 55, color: Colors.white),
                        Text('MALE'
                          , style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                  )),
              SizedBox(
                width: 15,
              ),
              RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: clr2 ? Color(0xff313244) : Color(0xff24253D),
                  onPressed: ()=> setState(() => clr2 = !clr2),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: 145,
                    width: 110,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.female, size: 55, color: Colors.white),
                        Text('FEMALE'
                          , style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                  )),
            ],
          ),
          buildContainer(
              'HEIGHT',
              '$height',
              260,
              160,
              'cm',
              Slider(
                thumbColor: Color(0xffE83D67),
                inactiveColor: Colors.white,
                activeColor: Color(0xffE83D67),
                value: height,
                max: 220,
                divisions: 220,
                onChanged: (double value) {
                  setState(() {
                    height = value;
                  });
                },
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildContainer(
                'WEIGHT',
                '$weight',
                124,
                130,
                '',
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xff5F5F6F),
                          shape: CircleBorder(),
                          minimumSize: Size(30, 50)),
                      child: Center(
                        child: Text(
                          '-',
                          style: TextStyle(color: Colors.white, fontSize: 45),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          weight--;
                        });
                      },
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xff5F5F6F),
                          shape: CircleBorder(),
                          minimumSize: Size(33, 53)),
                      child: Center(
                        child: Text(
                          '+',
                          style: TextStyle(color: Colors.white, fontSize: 34),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          weight++;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              buildContainer(
                'AGE',
                '$age',
                124,
                130,
                '',
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xff5F5F6F),
                          shape: CircleBorder(),
                          minimumSize: Size(30, 50)),
                      child: Center(
                        child: Text(
                          '-',
                          style: TextStyle(color: Colors.white, fontSize: 45),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          age--;
                        });
                      },
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xff5F5F6F),
                          shape: CircleBorder(),
                          minimumSize: Size(33, 53)),
                      child: Center(
                        child: Text(
                          '+',
                          style: TextStyle(color: Colors.white, fontSize: 34),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          age++;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xffE83D67), fixedSize: Size(260, 50)),
            child: Text(
              'CALCULATE',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return const SecondScreen();
              }));
            },
          ),
        ],
      ),
    );
  }

  Container buildContainer(
      String txt, String txt2, double w, double h, String n, Widget wid,
      [Widget? option]) {
    return Container(
      padding: EdgeInsets.all(5),
      width: w,
      height: h,
      decoration: BoxDecoration(
          color: Color(0xff333244), borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(txt, style: TextStyle(color: Colors.grey, fontSize: 15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                txt2,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 37),
              ),
              Container(
                  height: 30,
                  width: 10,
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    n,
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
          wid
        ],
      ),
    );
  }
}
