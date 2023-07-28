import 'package:flutter/material.dart';

class ListViewHome extends StatelessWidget {
  final titles = ["Report", "Site Visit", "SITREP"];
  final subtitles = [
    "General Report/Logbook",
    "Report Site Situation Upon",
    "Report SITREP"
  ];
  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];

  // @override
  // Widget build(BuildContext context) {
  //     return ListView.builder(
  //         itemCount: 3,
  //         itemBuilder: (context, index) {
  //             return Card(
  //                 child: ListTile(
  //                 title: Text("testing"),
  //                 subtitle: Text("subtesting"),
  //                 leading: CircleAvatar(
  //                 backgroundImage: NetworkImage("https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
  //                 trailing: Icon(icons[index])));
  //
  //
  //         });
  // }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Padding(padding: EdgeInsets.only(bottom: 10), child: Card(
            elevation: 0.0,
            color: Colors.grey.withOpacity(0.1),
            // child: ListTile(
            //     title: Text(titles[index], style: TextStyle(fontWeight: FontWeight.w500)),
            //     subtitle: Text(subtitles[index]),
            //     leading: CircleAvatar(
            //     backgroundImage: NetworkImage("https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
            //     // trailing: Icon(icons[index])
            // ),

            child: Row(
              children: [

                Positioned(
                    left: 5,
                    top: 30,
                    child: Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      padding: const EdgeInsets.all(15),
                      child: Icon(
                        Icons.work_outline,
                        color: Colors.black,
                        size: 34.0,
                        semanticLabel: 'Text to announce in accessibility modes',
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(2, 6),
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                ),


                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 18, left: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Report",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                      Text("General Report/Logbook",
                          style:
                              TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.3))),
                    ],
                  ),
                ),




              ],
            ),
            ),
          );
        });
  }
}
