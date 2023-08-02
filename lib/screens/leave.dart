import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../widgets/responsive.dart';
import '../widgets/cover.dart';
import '../widgets/calendar.dart';

class LeavePage extends StatefulWidget {
  @override
  _LeavePageState createState() => _LeavePageState();
}

class _LeavePageState extends State<LeavePage> {
  @override
  Widget build(BuildContext context) {
    responsive().init(context);

    return Scaffold(
      body: Stack(
        children: [
          Cover(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            SizedBox(height: responsive.screenHeight / 40),
            Column(
                children: [
                  Container(
                      // width: responsive.screenWidth,
                      // padding: EdgeInsets.all(10),
                      // margin: EdgeInsets.all(10),
                      height: responsive.screenHeight / 1.55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TableEventsExample(),
                  ),
                ],
            ),

            SizedBox(height: responsive.screenHeight / 20),
            Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.only(bottom: 30, right: 30),
                  width: responsive.screenWidth / 2,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green, // background
                      onPrimary: Colors.white, // foreground
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      elevation: 5,
                      shadowColor: Colors.green,
                    ),
                    icon: Icon(Icons.add),
                    label: Text("Apply Leave",
                        style: TextStyle(
                          fontSize: 20,
                        )),
                    onPressed: () {},
                  ),
                ),
              ),


            ],
          ),
        ],
      ),
    );
  }
}
