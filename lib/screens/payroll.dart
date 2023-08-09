import 'package:flutter/material.dart';
import '../widgets/responsive.dart';
import '../widgets/cover.dart';
import 'package:intl/intl.dart';
import '../widgets/listviewhome.dart';
import '../containts/themes.dart';

class PayrollPage extends StatefulWidget {
  @override
  _PayrollPageState createState() => _PayrollPageState();
}

class _PayrollPageState extends State<PayrollPage> {
  DateTime date = DateTime.now();
  late var formattedDate;

  @override
  void initState() {
    super.initState();
    formattedDate = DateFormat('d-MMM-yy').format(date);
    print(formattedDate);
  }

  @override
  Widget build(BuildContext context) {
    responsive().init(context);

    return Scaffold(
      body: Stack(
        children: [
          Cover(),
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 30, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Payslip Salary",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "Last payroll at 1 Feb 2023",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: OutlinedButton(
                        // onPressed: (){},
                        onPressed: () async {
                          await showDatePicker(
                            context: context,
                            initialDate: date,
                            firstDate: DateTime(2022),
                            lastDate: DateTime(2030),
                          ).then((selectedDate) {
                            if (selectedDate != null) {
                              setState(() {
                                date = selectedDate;
                                formattedDate =
                                    DateFormat('d-MMM-yy').format(selectedDate);
                                print(formattedDate);
                              });
                            }
                          });
                        },
                        child: Text("$formattedDate",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white.withOpacity(0.3),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              Container(
                margin: EdgeInsets.all(20),
                width: responsive.screenWidth,
                height: responsive.screenHeight / 6,
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
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                  child: Row(
                    children: [
                      Container(
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: colorTheme.black.withOpacity(0.2),
                                blurRadius: 10.0,
                              ),
                            ],
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 65,
                            child: CircleAvatar(
                              radius: 60,
                              backgroundImage:
                                  AssetImage('assets/images/photos.jpeg'),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Muhammad Syafiq",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                          SizedBox(height: 3),
                          Text("Developer",
                              style: TextStyle(
                                  color: colorTheme.black.withOpacity(0.3))),
                          SizedBox(height: 5),
                          Text("Current Salary: RM2000",
                              style: TextStyle(
                                  color: colorTheme.black.withOpacity(0.3))),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Icon(
                        Icons.work_outline,
                        color: colorTheme.primary,
                        size: 20.0,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      ),
                      decoration: BoxDecoration(
                        color: colorTheme.primary.withOpacity(0.1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Text("My Salary",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  ],
                ),
              ),

              const SizedBox(height: 20.0),

              // Not Found API
              // Image(
              //   image: AssetImage("assets/images/empty.png"),
              // ),

              // Found API
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity / 2,
                height: responsive.screenHeight / 2.2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Container(
                      margin: EdgeInsets.only(top: 12),
                      child: ListViewHome(imageIcon: false, chip: true)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
