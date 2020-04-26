
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:crowd_counting/timer.dart';
void main() => runApp(
  MaterialApp(
      home: MyApp(),
      theme: ThemeData(
        canvasColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        accentColor: Colors.blue[900],
        brightness: Brightness.dark,
      ),
    ));

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    
     appBar: AppBar(title: Text("Pauzr-CountDown"),
     
     ),
     body: 
     Row(
       children: <Widget>[
         SizedBox(
           height: 5000.0,
         ),
         Container(
 
           margin: EdgeInsets.all(10.0),
           
           
           width: 110,
           height: 100,
           child: new RaisedButton(
             color: Colors.green,
             child: Text("10 minutes",style: TextStyle(fontSize: 20.0,),),
             onPressed: (){
              gotoTimerpage(context,600,10);
              
                         },
                         ) 
                       ),
                       Container(
                        
                         margin: EdgeInsets.all(10.0),
                         width: 110,
                         height: 100,
                         child: new RaisedButton(
                           color: Colors.purple,
                           child: Text("20 minutes",style: TextStyle(fontSize: 20.0,),),
                           onPressed: (){
                              gotoTimerpage(context,1200,20);
                         },
                         ) 
                       ),
                       Container(
                        
                         margin: EdgeInsets.all(10.0),
                         width: 110,
                         height: 100,
                         child: new RaisedButton(
                           child: Text("30 minutes",style: TextStyle(fontSize: 20.0,),),
                           onPressed: (){
                                    gotoTimerpage(context,1800,30);
                         },
                         ) 
                       ),
                     ],
                   ),
                  );
                  
                  
                  }
              
               gotoTimerpage(BuildContext context,int time,int points) {
                 Navigator.push(context,
                 MaterialPageRoute(builder: (context)=> Timer(duration: time,points: points,)));

               }
      
}