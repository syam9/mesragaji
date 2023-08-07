import 'package:flutter/material.dart';
import '../widgets/responsive.dart';
import '../widgets/cover.dart';
import '../containts/themes.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    responsive().init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Cover(),
            Column(
              children: [
                Container(
                  height: 50,
                  child: Image(
                    image: AssetImage("assets/images/white-mesragaji.png"),
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: colorTheme.black.withOpacity(0.1),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 65,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/images/photos.jpeg'),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text("Mr. Hashim Ismail",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                SizedBox(height: 5),
                Text("UIUX Designer",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.withOpacity(0.5))),
                SizedBox(height: 30),
                Column(
                  children: [
                    Container(
                      // height: responsive.screenHeight,
                      width: responsive.screenWidth,
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 3,
                              color: colorTheme.black.withOpacity(0.1),
                              spreadRadius: 3)
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Personal Details",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500)),
                            Divider(
                              color: colorTheme.primary,
                              thickness: 4,
                              indent: 0,
                              endIndent: 280,
                            ),
                            SizedBox(height: 20),
                            Text("IC Number",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey)),
                            SizedBox(height: 5),
                            Text("973341013344",
                                style: TextStyle(fontSize: 20)),
                            SizedBox(height: 20),
                            Text("Race",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey)),
                            SizedBox(height: 5),
                            Text("Malay", style: TextStyle(fontSize: 20)),
                            SizedBox(height: 20),
                            Text("Nationality",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey)),
                            SizedBox(height: 5),
                            Text("Malaysian", style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    Container(
                      // height: responsive.screenHeight,
                      width: responsive.screenWidth,
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 3,
                              color: colorTheme.black.withOpacity(0.1),
                              spreadRadius: 3)
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Position",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500)),
                            Divider(
                              color: colorTheme.primary,
                              thickness: 4,
                              indent: 0,
                              endIndent: 280,
                            ),
                            SizedBox(height: 20),
                            Text("Type",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey)),
                            SizedBox(height: 5),
                            Text("Staff",
                                style: TextStyle(fontSize: 20)),
                            SizedBox(height: 20),
                            Text("Role",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey)),
                            SizedBox(height: 5),
                            Text("UIUX Designer", style: TextStyle(fontSize: 20)),
                            SizedBox(height: 20),
                            Text("Department",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey)),
                            SizedBox(height: 5),
                            Text("Development", style: TextStyle(fontSize: 20)),
                            SizedBox(height: 20),
                            Text("Employment Type",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey)),
                            SizedBox(height: 5),
                            Text("Full Time", style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                    ),


                    SizedBox(height: 30),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: colorTheme.primary, // background
                          onPrimary: Colors.white, // foreground
                          minimumSize: const Size.fromHeight(50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                          elevation: 5,
                          shadowColor: colorTheme.primary,
                        ),
                        onPressed: () {},
                        child: Text("LOG OUT",
                            style: TextStyle(
                              fontSize: 18,
                            )),
                      ),
                    ),


                    SizedBox(height: 80),









                  ],
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  width: double.infinity / 2,
                  child: Container(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
