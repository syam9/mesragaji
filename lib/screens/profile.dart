import 'package:flutter/material.dart';
import '../widgets/responsive.dart';
import '../widgets/cover.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    responsive().init(context);

    return Scaffold(
      body: Stack(
          children: [
            Cover(),
            


          ],
      ),
    );
  }
}
