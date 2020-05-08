import 'dart:async';
import 'package:flutter/material.dart';
import 'package:whatsupcoders_app/main.dart';
import 'homePage.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  //Routing Timer
  startTime() async {
    var _duration = new Duration(seconds: 10);
    return Timer(_duration, navigationPage);
  }


  void navigationPage(){
    Navigator.of(context).pushReplacementNamed(HomePageRoute);
  }

   @override
  void initState() {
    super.initState();
    startTime();
  }

  //Loading Page user interface
  @override
  Widget build(BuildContext context) {
    return Stack(
     children: <Widget>[
       Scaffold(
         backgroundColor: Colors.lightBlue,
       ),
       Center(
         child: SizedBox(
           width: 100,
           height: 100,
           child: Image.asset('assets/images/blue-twitter.png') 
         )
        ,)
     ],
    );
  }
}