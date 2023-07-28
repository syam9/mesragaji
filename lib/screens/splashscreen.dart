import 'package:flutter/material.dart';
import 'dart:async';
// import '../screens/homepage.dart';
import '../screens/route.dart';
import '../screens/login.dart';


class SplashscreenPage extends StatefulWidget{
    @override
    _SplashscreenPageState createState() => _SplashscreenPageState();
}


class _SplashscreenPageState extends State<SplashscreenPage>{

  @override
  void initState(){
    super.initState();

    Timer(Duration(seconds: 3), (){
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => LoginPage(),
            ));
    });
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF00A650), Color(0xFF98F06E)])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Container(
              width: 230.0,
              child: Image.asset("assets/images/white-mesragaji.png"),
            ),
          )),
    );
  }
}
