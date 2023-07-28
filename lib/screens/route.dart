import 'package:flutter/material.dart';
import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
// import 'package:indexed/indexed.dart';
// import './../containts/icon_nav.dart';
import './../widgets/nav-drawer.dart';
import './../widgets/cappbar.dart';
// import './../widgets/listviewhome.dart';
// import './../widgets/bottomnavigation.dart';
import './homepage.dart';
import './splashscreen.dart';


class RoutePage extends StatefulWidget {
  RoutePage({Key? key, this.title = ""}) : super(key: key);

  final String title;

  @override
  _RoutePageState createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
  int _currentIndex = 0;
  final List<Widget> _widgetList = [
    // SplashscreenPage(),
    HomePage(),
    const Text('Page Two'),
    const Text('Page Three'),
    const Text('Page Four'),
    const Text('Page Five'),
    const Text('Page Six'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: customAppBar(),
      body: Center(child: _widgetList[_currentIndex]),

    bottomNavigationBar: CustomLineIndicatorBottomNavbar(
        selectedColor: Colors.green,
        unSelectedColor: Colors.white,
        backgroundColor: Color(0xFF343434),
        currentIndex: _currentIndex,
        onTap: (index) {
            setState((){
                _currentIndex = index;
            });
        },
        enableLineIndicator: true,
        lineIndicatorWidth: 3,
        indicatorType: IndicatorType.Top,
        customBottomBarItems: [
            CustomBottomBarItems(label: 'Home',icon: Icons.home_mini),
            CustomBottomBarItems(label: 'Home',icon: Icons.note_outlined),
            CustomBottomBarItems(label: 'Home',icon: Icons.timer_outlined),
            CustomBottomBarItems(label: 'Home',icon: Icons.money_outlined),
            CustomBottomBarItems(label: 'Home',icon: Icons.people_outlined),
        ],
    ),

    );
  }

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}


