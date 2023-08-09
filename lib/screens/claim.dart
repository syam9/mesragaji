import 'package:flutter/material.dart';
import '../widgets/responsive.dart';
import '../widgets/cover.dart';
// import '../widgets/datepicker.dart';
import 'package:intl/intl.dart';
import '../widgets/listviewhome.dart';
import '../screens/form/newClaim.dart';
import '../containts/themes.dart';

class ClaimPage extends StatefulWidget {
  @override
  _ClaimPageState createState() => _ClaimPageState();
}

class _ClaimPageState extends State<ClaimPage> {
  String dropdownvalue = "Item 1";

  var items = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
  ];

  var claim = [
    {
      "Title": "Duit Minyak",
      "Subtitle": "12 July 2023  09:00AM",
    },
    {
      "Title": "Duit Tayar",
      "Subtitle": "13 July 2023  10:00AM",
    },
  ];

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          "Claim for",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "Claim field 2 Feb 2023",
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

              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: responsive.screenWidth / 2.4,
                      height: responsive.screenHeight / 6,
                      decoration: BoxDecoration(
                        color: colorTheme.secondary,
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
                        child: Padding(
                            padding: EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Stack(
                                      children: [
                                          Container(
                                              width: responsive.screenWidth / 10,
                                              height: responsive.screenHeight / 23,
                                              decoration: BoxDecoration(
                                                  color: Colors.white.withOpacity(0.1),
                                                  borderRadius: BorderRadius.circular(10),

                                             ),
                                              child: Align(
                                                  alignment: Alignment.center,
                                                  child: Icon(Icons.book, color: Colors.white)
                                              ),
                                          ),
                                      ],
                                  ),
                              ),
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                          Text("35", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
                                          Text("Total Claim", style: TextStyle(color: Colors.white)),

                                      ],
                                  ),
                              ),
                            ],
                          ),
                        ),
                    ),
                    Container(
                      width: responsive.screenWidth / 2.4,
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
                        child: Padding(
                            padding: EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Stack(
                                      children: [
                                          Container(
                                              width: responsive.screenWidth / 10,
                                              height: responsive.screenHeight / 23,
                                              decoration: BoxDecoration(
                                                  color: colorTheme.primary.withOpacity(0.1),
                                                  borderRadius: BorderRadius.circular(10),

                                             ),
                                              child: Align(
                                                  alignment: Alignment.center,
                                                  child: Icon(Icons.book, color: colorTheme.primary)
                                              ),
                                          ),
                                      ],
                                  ),
                              ),
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                          Text("02", style: TextStyle(color: colorTheme.black, fontSize: 24, fontWeight: FontWeight.bold)),
                                          Text("My Claim", style: TextStyle(color: colorTheme.black)),

                                      ],
                                  ),
                              ),
                            ],
                          ),
                        ),
                    ),
                  ],
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
                        semanticLabel: 'Text to announce in accessibility modes',
                      ),
                      decoration: BoxDecoration(
                        color: colorTheme.primary.withOpacity(0.1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Text("My Claim",
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  ],
                ),
              ),

              SizedBox(height: 5),

              // Not Found API
              // Image(
              //   image: AssetImage("assets/images/empty.png"),
              // ),

              // Found API
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity / 2,
                height: responsive.screenHeight / 3,
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
                      child: ListViewHome(imageIcon: false, chip: false)),
                ),
              ),
              SizedBox(height: 5),

              Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: EdgeInsets.only(bottom: 30, right: 30),
                  width: responsive.screenWidth / 1.7,
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
                    label: Text("Create New Claim",
                        style: TextStyle(
                          fontSize: 20,
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewClaimPage()),
                      );
                    },
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
