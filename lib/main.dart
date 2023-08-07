import 'package:flutter/material.dart';
import './screens/route.dart';
import './screens/splashscreen.dart';
import './screens/login.dart';
import './screens/otp_login.dart';
import './screens/form/newClaim.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


    @override
    Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.green,
      // ),
      // home: RoutePage(title: jFLutter Demo'),
      home: SplashscreenPage(),
      // home: NewClaimPage(),
    );
  }
}



