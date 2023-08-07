import 'package:flutter/material.dart';
import './nav-drawer.dart';
import '../containts/themes.dart';

AppBar customAppBar(){
    return AppBar(
        backgroundColor: colorTheme.primary,  
        centerTitle: true,
        titleSpacing: 30.0,
        elevation: 0.0,
        // shape: const RoundedRectangleBorder(
        //     borderRadius: BorderRadius.vertical(
        //         bottom: Radius.circular(30),
        //     ),
        // ),
        iconTheme: IconThemeData(color: Colors.white),
        // #Option 1
        // leading: Builder(
        //     builder: (BuildContext context){
        //         return IconButton(
        //             icon: const Icon(
        //                 Icons.remove_red_eye_sharp,
        //             ),
        //             onPressed: (){
        //                 // Scaffold.of(context).NavDrawer();
        //                 // Scaffold.of(context).NavDrawer();
        //                 print("sda");
        //                 // return NavDrawer();
        //                 // return NavDrawer();
        //
        //
        //             }, 
        //         );
        //     }
        //
        // ),
        
        // #Option 2
        // leading: InkWell(
        //     // onTap(): => print("dadsf"), onTap: (){
        //         print("asdda");
        //         // Scaffold.of(context).NavDrawer();
        //     },
        //     child: Center(
        //         child: Container(
        //         // height: 300.0,
        //         // width: 300.0,
        //         // color: Colors.white.withOpacity(0.5),
        //         margin: const EdgeInsets.all(8.0),
        //         decoration: BoxDecoration(
        //             color: Colors.white.withOpacity(0.4),
        //             borderRadius: const BorderRadius.all(
        //                 Radius.circular(10.0),
        //             ),
        //         ),
        //         child: const Align(
        //             alignment: Alignment.center,
        //             child: Icon(
        //                 Icons.subject,
        //                 color: Colors.white,
        //                 size: 25.0,
        //
        //             ),
        //         ),
        //     ),
        //     ),
        // ),

        actions: [
            InkWell(
                onTap: (){},
                child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                        Icons.notifications,
                        size: 20,

                    ),
                ),
            ),
        ],
        // bottom: PreferredSize(
        //     preferredSize: const Size.fromHeight(50.0),
        //     child: Container(
        //         padding: const EdgeInsets.only(left: 30, bottom: 20),
        //         child: Row(
        //             children: <Widget>[
        //                 Stack(
        //                     children: [
        //                         // const CircleAvatar(
        //                         //     radius: 32,
        //                         //     backgroundColor: Colors.white,
        //                         //     child: Icon(Icons.person_outline_rounded),
        //                         // ),
        //                         
        //                         Container(
        //                             child: Column(
        //                                 children: <Widget> [
        //                                     Text("Hello, Muhammad Syafiq"),
        //                                     Text("Mon, 24 July 2023"),
        //
        //                                 ],
        //                             ),
        //                         ),
        //                     ],
        //                ),
        //             ],
        //         ),
        //
        //     ),
        //
        // ),

        

    );
}



