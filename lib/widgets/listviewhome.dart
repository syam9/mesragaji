import 'package:flutter/material.dart';
import 'package:nil/nil.dart';
import '../containts/themes.dart';

class ListViewHome extends StatelessWidget {
  final titles = ["Report", "Site Visit", "SITREP"];
  final subtitles = [
    "General Report/Logbook",
    "Report Site Situation Upon",
    "Report SITREP"
  ];
  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];

  bool imageIcon = true;
  bool chip = true;

  ListViewHome({required this.imageIcon, required this.chip});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // itemCount: titles.length,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Card(
              elevation: 8,
              color: Colors.white,
              shadowColor: colorTheme.black.withOpacity(0.3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                    imageIcon?
                      Positioned(
                        left: 5,
                        top: 30,
                        child: Container(
                          margin: EdgeInsets.only(left: 10, top: 10),
                          padding: const EdgeInsets.all(15),
                          child: Icon(
                            Icons.work_outline,
                            color: colorTheme.black,
                            size: 34.0,
                            semanticLabel:
                                'Text to announce in accessibility modes',
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
                      )
                  : Container(),

                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(top: 18, left: 20, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Report",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        Text("General Report/Logbook",
                            style: TextStyle(
                                fontSize: 15,
                                color: colorTheme.black.withOpacity(0.3))),

                        chip?
                          Chip(
                              backgroundColor: colorTheme.primary,
                              label: Text("Complate",style: TextStyle(color: Colors.white, fontSize: 15)),
                          )
                        : Container(),
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
