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
                    Text(
                      "Claim for",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
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

              // Not Found API
              // Image(
              //   image: AssetImage("assets/images/empty.png"),
              // ),

              // Found API
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity / 2,
                height: responsive.screenHeight / 1.8,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white, 
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),

                    ),
                    child: Container(margin: EdgeInsets.only(top: 12), child: ListViewHome(imageIcon: false, chip: false)),
                ),
              ),

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
