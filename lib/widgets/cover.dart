import "package:flutter/material.dart";
import '../widgets/responsive.dart';
import '../containts/themes.dart';

class Cover extends StatelessWidget {

    @override

   Widget build(BuildContext context) {
    responsive().init(context);

      return Positioned( 
          top: -250,
              child: Container(
        margin: EdgeInsets.only(top: 0.1),
        height: responsive.screenHeight / 10,
        decoration: const BoxDecoration(
          color: colorTheme.primary,
        ),
        child: Transform.scale(
          scale: 10,
          child: Container(
            width: responsive.screenWidth,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: colorTheme.primary,
                shape: BoxShape.circle,
            ),
            child: const Text('Bad Idea Bears'),
          ),
        ), 
        ),
      );
   }

}
