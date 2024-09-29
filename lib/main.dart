

import 'package:flutter/material.dart';


 void main(){

runApp(MyApp());
 }
  class MyApp extends StatefulWidget {
    const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    @override
    Widget build(BuildContext context) {
      return const  MaterialApp(
     //   home: SplashScreen()
      );
    }
}


extension  Nagitor on BuildContext{

   Future< dynamic> push(   Widget widget){


     return Navigator.of( this).push(MaterialPageRoute(builder: (context) => widget));
   }

  Future< dynamic> pushReplacement( Widget widget ){
     return Navigator.pushReplacement(this, MaterialPageRoute(builder: (context) => widget,));
  }
}