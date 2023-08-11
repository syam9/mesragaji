import 'package:flutter/material.dart';
import '../widgets/listviewhome.dart';
import '../widgets/responsive.dart';
import '../containts/themes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    responsive().init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // const SizedBox(height: 20.0),


            Stack(
              children: <Widget>[
                Container(
                  height: responsive.screenHeight / 4.0,
                  width: responsive.screenWidth,
                  decoration: const BoxDecoration(
                    color: colorTheme.primary,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    height: responsive.screenHeight,
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

                SizedBox(height: 200),


                Column(
                    children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.only(right: 10, left: 10, top: 90),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: colorTheme.black.withOpacity(0.1),
                            offset: const Offset(2, 0),
                            blurRadius: 10,
                            spreadRadius: 4,
                          ),
                        ],
                      ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    child: Image.asset('assets/images/present.png',
                                        height: 50, width: 50),
                                  ),
                                  SizedBox(height: 10),
                                  Text("Present: 11", style: TextStyle(fontSize: 15)),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    child: Image.asset('assets/images/absent.png',
                                        height: 50, width: 50),
                                  ),
                                  SizedBox(height: 10),
                                  Text("Absent: 11", style: TextStyle(fontSize: 15)),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    child: Image.asset('assets/images/leave.png',
                                        height: 50, width: 50),
                                  ),
                                  SizedBox(height: 10),
                                  Text("Leave: 11"),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    child: Image.asset('assets/images/visit.png',
                                        height: 50, width: 50),
                                  ),
                                  SizedBox(height: 10),
                                  Text("Visit: 11"),
                                ],
                              ),
                            ],
                          ),
                        ),


                Container(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Positioned(
                    right: 0,
                    top: 10,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      // width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: colorTheme.black.withOpacity(0.1),
                            offset: const Offset(2, 0),
                            blurRadius: 10,
                            spreadRadius: 4,
                          ),
                        ],
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Logged In Duration",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black)),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Check In",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: colorTheme.black)),
                                      SizedBox(height: 10),
                                      Container(
                                        // height: 40.0,
                                        height: responsive.screenHeight / 19.0,
                                        // width: 150.0,
                                        width: responsive.screenWidth / 2.8,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: colorTheme.primary
                                              .withOpacity(0.1),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15.0),
                                          ),
                                        ),
                                        child: Text("09:30 AM",
                                            style: TextStyle(
                                                color: colorTheme.primary,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500)),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Check Out",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: colorTheme.black)),
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
                                  style: TextStyle(
                                      fontSize: 15, color: colorTheme.black)),
                              SizedBox(height: 30),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: colorTheme.primary, // background
                                  onPrimary: Colors.white, // foreground
                                  minimumSize: const Size.fromHeight(50),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
                                  elevation: 5,
                                  shadowColor: colorTheme.primary,
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
                ),

                    ],
                ),








              ],
            ),
            const SizedBox(height: 20.0),

            // Container(
            //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
            //   child: Row(
            //     children: [
            //       Container(
            //         padding: const EdgeInsets.all(8),
            //         child: Icon(
            //           Icons.work_outline,
            //           color: colorTheme.primary,
            //           size: 20.0,
            //           semanticLabel: 'Text to announce in accessibility modes',
            //         ),
            //         decoration: BoxDecoration(
            //           color: colorTheme.primary.withOpacity(0.1),
            //           borderRadius: BorderRadius.all(
            //             Radius.circular(10),
            //           ),
            //         ),
            //       ),
            //       SizedBox(width: 10.0),
            //       Text("Activity",
            //           style:
            //               TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            //     ],
            //   ),
            // ),
            // const SizedBox(height: 10.0),
            // Container(
            //   padding: EdgeInsets.symmetric(horizontal: 15),
            //   width: double.infinity / 2,
            //   // height: 150.0,
            //   height: responsive.screenHeight / 5,
            //   // height: double.infinity,
            //   child: ListViewHome(imageIcon: true, chip: false),
            // ),
          ],
        ),
      ),
    );
  }
}
