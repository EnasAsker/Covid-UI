
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Screens/secreen1.dart';

double bmi=double.parse((weight/((height/100)*(height/100))).toStringAsFixed(1));

String? display (double x){
  if(bmi>25&&bmi<=29.6){return 'OVERWEIGHT';}
  else if (bmi<18.5){return 'UNDERWEIGHT';}
  else if (bmi>=29.9){return 'OBESITY';}
  else {return 'NORMAL';}
}

String? phrase (){
  if(bmi>25&&bmi<=29.6){return 'You have higher than normal body weight. Try to '
      'exercise more';}
  else if (bmi<18.5){return 'You have lower than normal body weight. You can eat a bit more';}
  else if (bmi>=29.9){return 'You should take your weight into consideration';}
  else {return 'You have a normal body weight. Good job!';}
}



void main (){runApp(SecondScreen());
}


class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff24263B),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              alignment: Alignment  .topLeft,
              child: Text('Your Result', style: TextStyle(color: Colors.white, fontSize: 50,
                  fontWeight: FontWeight.bold),)),
          Container(
            alignment: Alignment.center,
            height: 530,
            width: 400,
            decoration: BoxDecoration(
              color: Color(0xff333244),
              borderRadius: BorderRadius.circular(7),
            ),

            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text((display(bmi))!, style: TextStyle(color: Color(0xff7FC19B),
                    fontWeight:FontWeight.bold , fontSize: 24),),
                Text('$bmi', style: TextStyle(color: Colors.white, fontSize: 50,
                    fontWeight: FontWeight.bold),),
                Text(phrase()!, style: TextStyle(color: Colors.white, fontSize: 25),
                  textAlign:TextAlign.center ,),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xffE83D67),
                fixedSize: Size(400, 50)

            ),
            child: Text('RE-CALCULATE', style: TextStyle(color:Colors.white,
                fontSize: 20, fontWeight: FontWeight.bold),),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_){return const MyHomePage() ;}));
            }, )

        ],
      ),
    );
  }
}
