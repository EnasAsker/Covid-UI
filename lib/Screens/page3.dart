import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Screens/page2.dart';

void main(){runApp(page3());}

class page3 extends StatelessWidget {
  const page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(20),
            leading: CircleAvatar(backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/872735699488866304/3X7wPXrK_400x400.jpg'),
              radius: 35,),
            title: Text('Hello', style: TextStyle(fontSize: 25),),
            subtitle: Text('Eugene Alan', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,
            color: Colors.black),),
          ),
          Container(
            width: 1100,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 5),
                  blurRadius: 25
                )
              ]
            ),
            child: TextFormField(
              decoration:InputDecoration(
                prefixIcon:Icon(Icons.search, color: Colors.black,),
                hintText: 'Search',
                suffixIcon: IconButton(onPressed: (){},icon:Icon( Icons.keyboard_voice,
                color: Colors.red,),),
                focusedBorder:InputBorder.none,
                fillColor: Colors.white, filled: true,
                border: OutlineInputBorder(borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(15),
              width: 1100,
              height: 170,
             decoration: BoxDecoration(
               image: DecorationImage(
                 image: NetworkImage('https://cdn-bijap.nitrocdn.com/AuMaQmessFRMSicXmZsEecJFLEquAyoT/assets/static/optimized/rev-fe1a568/wp-content/uploads/2020/03/warehouses-and-covid-19-1200x370.jpg'),
                 fit: BoxFit.cover
               )
             ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                (
                Text('COVID-19', style: TextStyle(color: Colors.white, fontSize: 30,fontWeight:
                FontWeight.bold),)),
                Text('Protect yourself and your family from covid 19',
                  style: TextStyle(color: Colors.white, fontSize: 20),),
              ],
            ),
          ),
          Container(
            margin:EdgeInsets.only(left: 10,top: 10, bottom: 7),
            alignment: Alignment.centerLeft,
              child: Text('What Do you need?', style: TextStyle(color: Colors.black, fontSize: 30,
              fontWeight: FontWeight.bold),)),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin:EdgeInsets.all(15),
                height: 170,
                width:170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network('https://media.istockphoto.com/vectors/syringe-vaccine-injection-vector-id1355676594?s=612x612',
                      height: 150, width: 150,),
                    Text("Vaccines", style: TextStyle(fontSize: 15, color: Colors.black),),
                  ],
                ),
              ),
              Container(
                margin:EdgeInsets.all(15),
                height: 170,
                width:170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network('https://media.istockphoto.com/vectors/fast-services-check-list-and-stopwatch-quick-questionnaire-short-vector-id1186357899?s=612x612',
                      height: 150, width: 150,),
                    Text("Rapid", style: TextStyle(fontSize: 15, color: Colors.black),),
                  ],
                ),
              ),
              Container(
                margin:EdgeInsets.all(15),
                height: 170,
                width:170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network('https://media.istockphoto.com/vectors/ambulance-emergency-paramedic-carrying-patient-in-stretcher-vector-id1218104087?s=612x612',
                      height: 150, width: 150,),
                    Text("Ambulance", style: TextStyle(fontSize: 15, color: Colors.black),),
                  ],
                ),
              ),
              Container(
                margin:EdgeInsets.all(15),
                height: 170,
                width:170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network('https://media.istockphoto.com/vectors/hospital-building-isolated-vector-illustration-flat-cartoon-modern-vector-id1058679916?s=612x612',
                      height: 150, width: 150,),
                    Text("Hospital", style: TextStyle(fontSize: 15, color: Colors.black),),
                  ],
                ),
              ),
              Container(
                margin:EdgeInsets.all(15),
                height: 170,
                width:170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network('https://media.istockphoto.com/vectors/chemical-test-tube-pictogram-icon-laboratory-glassware-or-beaker-on-vector-id855195698?s=612x612',
                      height: 150, width: 150,),
                    Text("Emergency", style: TextStyle(fontSize: 15, color: Colors.black),),
                  ],
                ),
              ),
              Container(
                margin:EdgeInsets.all(15),
                height: 170,
                width:170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network('https://media.istockphoto.com/vectors/microscope-laboratory-equipment-research-with-microbes-in-microscope-vector-id872482918?s=612x612',
                      height: 150, width: 150,),
                    Text("Lab Test", style: TextStyle(fontSize: 15, color: Colors.black),),
                  ],
                ),
              ),
            ],
          )
        ],
      ),

      floatingActionButton:FloatingActionButton( backgroundColor:Colors.white ,
        onPressed: (){},
        child: Icon(Icons.add, color: Colors.blueAccent, size: 40,), //icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color:Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children:[
            IconButton(icon: Icon(Icons.home_outlined, color: Colors.blueGrey,), onPressed: () {
           Navigator.of(context).push(MaterialPageRoute(builder: (_){return page2();}));
            },),
            IconButton(icon: Icon(Icons.emoji_events_outlined, color: Colors.blueGrey,), onPressed: () {},),
            IconButton(icon: Icon(Icons.person_outline, color: Colors.blueGrey,), onPressed: () {},),
            IconButton(icon: Icon(Icons.live_help_outlined, color: Colors.blueGrey,), onPressed: () {},),
          ],
        ),
      ),
    );
  }

}
