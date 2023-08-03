import 'package:flutter/material.dart';
import '../widgets/responsive.dart';
import '../widgets/cover.dart';
import 'package:intl/intl.dart';
import '../widgets/listviewhome.dart';

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
                    Text(
                      "Payroll for",
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

                SizedBox(height: 40),


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
                    child: Container(margin: EdgeInsets.only(top: 12), child: ListViewHome(imageIcon: false, chip: true)),
                ),
              ),
            ],


          ),
            


        ],
      ),
    );
  }
}
