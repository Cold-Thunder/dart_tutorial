import 'package:flutter/material.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';
import 'package:widgets_use/ui/widgets_use/bottom_navigation_bar/first_screen.dart';
import 'package:widgets_use/ui/widgets_use/bottom_navigation_bar/fourth.dart';
import 'package:widgets_use/ui/widgets_use/bottom_navigation_bar/second_screen.dart';
import 'package:widgets_use/ui/widgets_use/bottom_navigation_bar/third_screen.dart';

class FlutterBottomNavigation extends StatefulWidget {
  const FlutterBottomNavigation({super.key});

  @override
  State<FlutterBottomNavigation> createState() => _FlutterBottomNavigationState();
}

class _FlutterBottomNavigationState extends State<FlutterBottomNavigation> {

  int index = 0;
  List<Widget> screens = [FirstScreen(), SecondScreen(), ThirdScreen(), FourthScreen()];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
        scrolledUnderElevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.shifting,
          onTap:(value){
              setState((){
                index = value;
              });
          },
          currentIndex: index,
          selectedItemColor: AllColors.white,
          selectedIconTheme: IconThemeData(
            size: 30
          ),
          unselectedItemColor: AllColors.gerYellow,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home,),
              label: 'Home',
              backgroundColor: AllColors.purple,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.feed ),
              label: 'Feed',
              backgroundColor: AllColors.black
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: AllColors.bdRed
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.message),
              label: 'Message',
              backgroundColor: AllColors.italyGreen
            ),
          ]
      ),
      body: screens[index]
    );
  }
}
