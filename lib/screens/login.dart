import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:material_text_fields/material_text_fields.dart';
import '../widgets/responsive.dart';
import 'package:indexed/indexed.dart';
import '../screens/otp_login.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = PageController(
    // viewportFraction: 0.8,
    viewportFraction: 1.0,
    keepPage: true,
  );

  @override
  Widget build(BuildContext context) {
    responsive().init(context);

    TextEditingController phoneController = TextEditingController();
    int phoneNumber = 0;

    final pages = List.generate(
      3,
      (index) => Container(
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(16),
          color: Colors.grey.shade300.withOpacity(0.5),
        ),
        child: Container(
          height: 280,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/background.png'),
            ),
          ),
        ),
      ),
    );

    return Scaffold(
      body: SafeArea(
        // child: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      // height: 440,
                      height: responsive.screenHeight / 1.5,
                      width: responsive.screenWidth,
                      child: PageView.builder(
                        controller: controller,
                        itemBuilder: (_, index) {
                          return pages[index % pages.length];
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      margin:
                          EdgeInsets.only(top: responsive.screenHeight / 1.8),
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: pages.length,
                        effect: ExpandingDotsEffect(
                          dotHeight: 12,
                          dotWidth: 12,
                          dotColor: Colors.grey.shade300.withOpacity(0.8),
                          activeDotColor: Colors.green,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      width: 180,
                      child: Image.asset("assets/images/original.png"),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 300,
                width: responsive.screenWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 50, left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Get Started",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500)),
                      SizedBox(height: 20),
                      TextField(
                        controller: phoneController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.1),
                          border: OutlineInputBorder(),
                          labelText: 'Phone Number',
                          labelStyle: TextStyle(color: Colors.grey),
                          focusedBorder: OutlineInputBorder(
                            // borderSide: BorderSide(
                            //     width: 3,
                            //     color: Colors.red,
                            // ),
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          prefixIcon: const Icon(Icons.phone_android_outlined),
                          disabledBorder: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            // borderSide: BorderSide(
                            //     width: 3,
                            //     color: Colors.red,
                            // ),
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        // style: TextStyle(),
                      ),
                      SizedBox(height: 20),
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
                        onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => OtpLoginPage()));


                        },
                        child: Text("SMS",
                            style: TextStyle(
                              fontSize: 18,
                            )),
                      ),
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            print("daasa");
                          },
                          child: Text("Login via Email",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.green)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),

        // child: Stack(
        //     children: [
        //         Column(
        //             crossAxisAlignment: CrossAxisAlignment.center,
        //             children: <Widget> [
        //                 SizedBox(
        //                     // height: 440,
        //                     height: responsive.screenHeight / 1.5,
        //                     width: responsive.screenWidth,
        //                     child: PageView.builder(
        //                         controller: controller,
        //                         itemBuilder: (_, index) {
        //                             return pages[index % pages.length];
        //                         },
        //                     ),
        //                 ),
        //
        //                 Positioned(
        //                     child: SmoothPageIndicator(
        //                             controller: controller,
        //                             count: pages.length,
        //                             effect: ExpandingDotsEffect(
        //                                 dotHeight: 12,
        //                                 dotWidth: 12,
        //                                 dotColor: Colors.grey.shade300.withOpacity(0.8),
        //                                 activeDotColor: Colors.green,
        //                             ),
        //                         ),
        //                 ),
        //
        //                 Container(
        //                     height: 300.0,
        //                     width: 300.0,
        //                     decoration: BoxDecoration(
        //                         color: Colors.green,
        //                     ),
        //                 ),
        //             ],
        //         ),
        //     ],
        // ),

        // ),
      ),
    );
  }
}
