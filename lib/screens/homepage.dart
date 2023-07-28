import 'package:flutter/material.dart';
import '../widgets/listviewhome.dart';
import '../widgets/responsive.dart';


class HomePage extends StatefulWidget {
  // const HomeBottomPage({Key key, this.title}) : super(key: key);
  // final String title;

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    responsive().init(context);

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Container(
                height: responsive.screenHeight / 4.0,
                width: responsive.screenWidth,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 5),
                      const Text("Hello, Muhammad Syafiq",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white)),
                      const SizedBox(height: 5),
                      Text("Mon, 24 July 2023",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white.withOpacity(0.7))),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Positioned(
                  right: 0,
                  top: 10,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    height: responsive.screenHeight / 2.3,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: const Offset(0.5, 0.0),
                          blurRadius: 0.5,
                          spreadRadius: 0.5,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Logged In Duration",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black)),
                          SizedBox(height: 10),
                          Container(
                            // height: 80.0,
                            height: responsive.screenHeight / 11.0,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("05",
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500)),
                                    Text("HOUR",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                                SizedBox(width: 20),
                                Text(":",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(width: 20),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("00",
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500)),
                                    Text("MIN",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Check In",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black)),
                                  SizedBox(height: 10),
                                  Container(
                                    // height: 40.0,
                                    height: responsive.screenHeight / 19.0,
                                    // width: 150.0,
                                    width: responsive.screenWidth / 2.8,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.green.withOpacity(0.1),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15.0),
                                      ),
                                    ),
                                    child: Text("09:30 AM",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Check Out",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black)),
                                  SizedBox(height: 10),
                                  Container(
                                    // height: 40.0,
                                    height: responsive.screenHeight / 19.0,
                                    // width: 150.0,
                                    width: responsive.screenWidth / 2.8,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.1),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15.0),
                                      ),
                                    ),
                                    child: Text("-",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text("Last Check In: Mon, 24 July 2023, 9.30 AM",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)),
                          SizedBox(height: 30),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green, // background
                              onPrimary: Colors.white, // foreground
                              minimumSize: const Size.fromHeight(50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0)),
                              elevation: 5,
                              shadowColor: Colors.green,
                            ),
                            onPressed: () {},
                            child: Text("CHECK-OUT",
                                style: TextStyle(
                                  fontSize: 18,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    Icons.work_outline,
                    color: Colors.green,
                    size: 20.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Text("Activity",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity / 2,
            // height: 150.0,
            height: responsive.screenHeight / 5,
            // height: double.infinity,
            child: ListViewHome(),
          ),
        ],
      ),
    );
  }
}
