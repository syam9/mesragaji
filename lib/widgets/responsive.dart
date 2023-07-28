import "package:flutter/material.dart";


class responsive{
    late MediaQueryData mediaQueryData;
    static double screenWidth = 0;
    static double screenHeight = 0;

    void init(BuildContext context) {
        mediaQueryData = MediaQuery.of(context);
        screenWidth = mediaQueryData.size.width;
        screenHeight = mediaQueryData.size.height;
    }

}
