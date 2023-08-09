import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../widgets/responsive.dart';
import '../widgets/cover.dart';
import '../widgets/calendar.dart';
import '../screens/form/newLeave.dart';
import '../containts/themes.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:percent_indicator/percent_indicator.dart';

class LeavePage extends StatefulWidget {
  @override
  _LeavePageState createState() => _LeavePageState();
}

class _LeavePageState extends State<LeavePage> {
  @override
  Widget build(BuildContext context) {
    responsive().init(context);

    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Stack(
            children: [
              Cover(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ButtonsTabBar(
                      backgroundColor: Colors.white.withOpacity(0.2),
                      unselectedBackgroundColor: Colors.transparent,
                      unselectedLabelStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                      radius: 100,
                      tabs: [
                        Tab(text: "   Summary   "),
                        Tab(
                          text: "   My Leave   ",
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: <Widget>[
                          Column(
                            children: [
                              SizedBox(height: 15),
                              Container(
                                width: responsive.screenWidth,
                                height: responsive.screenHeight / 1.8,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: colorTheme.black.withOpacity(0.1),
                                      offset: const Offset(
                                        2.0,
                                        2.0,
                                      ),
                                      blurRadius: 6.0,
                                      spreadRadius: 3.0,
                                    ),
                                  ],
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 25),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 30),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          new CircularPercentIndicator(
                                            radius: 70.0,
                                            lineWidth: 13.0,
                                            animation: true,
                                            percent: 0.3,
                                            center: new Text("15", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                                            circularStrokeCap:
                                                CircularStrokeCap.round,
                                            progressColor: colorTheme.primary,
                                            footer: Container(
                                                margin:
                                                    EdgeInsets.only(top: 10),
                                                child: Text("Total Leave",
                                                    style: TextStyle(
                                                        fontSize: 17, fontWeight: FontWeight.bold))),
                                          ),
                                          new CircularPercentIndicator(
                                            radius: 70.0,
                                            lineWidth: 13.0,
                                            animation: true,
                                            percent: 0.3,
                                            center: new Text("10", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                                            circularStrokeCap:
                                                CircularStrokeCap.round,
                                            progressColor: colorTheme.primary,
                                            footer: Container(
                                                margin:
                                                    EdgeInsets.only(top: 10),
                                                child: Text("Leave Balance",
                                                    style: TextStyle(
                                                        fontSize: 17, fontWeight: FontWeight.bold))),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 30),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          new CircularPercentIndicator(
                                            radius: 70.0,
                                            lineWidth: 13.0,
                                            animation: true,
                                            percent: 0.3,
                                            center: new Text("20", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                                            circularStrokeCap:
                                                CircularStrokeCap.round,
                                            progressColor: colorTheme.primary,
                                            footer: Container(
                                                margin:
                                                    EdgeInsets.only(top: 10),
                                                child: Text("Sick Leave",
                                                    style: TextStyle(
                                                        fontSize: 17, fontWeight: FontWeight.bold))),
                                                        
                                          ),
                                          new CircularPercentIndicator(
                                            radius: 70.0,
                                            lineWidth: 13.0,
                                            animation: true,
                                            percent: 0.3,
                                            center: new Text("20", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                                            circularStrokeCap:
                                                CircularStrokeCap.round,
                                            progressColor: colorTheme.primary,
                                            footer: Container(
                                                margin:
                                                    EdgeInsets.only(top: 10),
                                                child: Text("Hospitalization",
                                                    style: TextStyle(
                                                        fontSize: 17, fontWeight: FontWeight.bold))),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(height: 10),
                              Container(
                                height: responsive.screenHeight / 1.55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: TableEventsExample(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: responsive.screenHeight / 20),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.only(bottom: 30, right: 30),
                  width: responsive.screenWidth / 2,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: colorTheme.primary, // background
                      onPrimary: Colors.white, // foreground
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      elevation: 5,
                      shadowColor: colorTheme.primary,
                    ),
                    icon: Icon(Icons.add),
                    label: Text("Apply Leave",
                        style: TextStyle(
                          fontSize: 20,
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewLeavePage()),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
