import 'package:flutter/material.dart';
import '../../widgets/responsive.dart';
import '../../widgets/cover.dart';
import 'package:dotted_border/dotted_border.dart';

class NewClaimPage extends StatefulWidget {
  @override
  _NewClaimPageState createState() => _NewClaimPageState();
}

class _NewClaimPageState extends State<NewClaimPage> {
  @override
  Widget build(BuildContext context) {
    responsive().init(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Create New Claim'),
      ),
      body: Container(
        child: Stack(
          children: [
            Cover(),
            SingleChildScrollView(
                    child: 

                    Column(
                        children: [

                        Container(
                      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      width: responsive.screenWidth,
                      // height: responsive.screenHeight / 1.5,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: const Offset(0.5, 0.0),
                            blurRadius: 10,
                            spreadRadius: 0.5,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Select Category",
                              style:
                                  TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                          SizedBox(height: 10),
                          TextField(
                            // controller: phoneController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.withOpacity(0.1),
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(color: Colors.grey),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              disabledBorder: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text("Date",
                              style:
                                  TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                          SizedBox(height: 10),
                          TextField(
                            // controller: phoneController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.withOpacity(0.1),
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(color: Colors.grey),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              disabledBorder: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text("Amount (RM)",
                              style:
                                  TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                          SizedBox(height: 10),
                          TextField(
                            // controller: phoneController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.withOpacity(0.1),
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(color: Colors.grey),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              disabledBorder: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text("Notes",
                              style:
                                  TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                          SizedBox(height: 10),
                          TextField(
                            // controller: phoneController,
                            maxLines: 5,
                            minLines: 1,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.withOpacity(0.1),
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(color: Colors.grey),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              disabledBorder: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text("Attachment",
                              style:
                                  TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                          SizedBox(height: 10),
                          Container(
                              width: 100,
                              height: 100,
                              alignment: Alignment.centerLeft,
                              child: DottedBorder(
                                borderType: BorderType.RRect,
                                radius: Radius.circular(10),
                                dashPattern: [10, 4],
                                strokeCap: StrokeCap.round,
                                color: Colors.grey,
                                child: Container(
                                  width: double.infinity,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade50.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.add,
                                        color: Colors.grey,
                                        size: 40,
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                          SizedBox(height: 40),
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
                            child: Text("Submit",
                                style: TextStyle(
                                  fontSize: 18,
                                )),
                          ),
                ],
              ),
              ),
              ],
            ),
            ),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
