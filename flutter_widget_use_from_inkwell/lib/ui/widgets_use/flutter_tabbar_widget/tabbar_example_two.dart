import 'package:flutter/material.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';
import 'package:widgets_use/ui/widgets_use/flutter_tabbar_widget/screen_three.dart';
import 'package:widgets_use/ui/widgets_use/flutter_tabbar_widget/screen_one.dart';
import 'package:widgets_use/ui/widgets_use/flutter_tabbar_widget/screen_two.dart';

class TabbarExampleTwo extends StatefulWidget {
  const TabbarExampleTwo({super.key});

  @override
  State<TabbarExampleTwo> createState() => _TabbarExampleTwoState();
}

class _TabbarExampleTwoState extends State<TabbarExampleTwo> with SingleTickerProviderStateMixin{
  late TabController _controller;

  @override
  void initState(){
    super.initState();

    _controller = TabController(
      length: 3,
      vsync: this
    );
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Two'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
            color: AllColors.white,
            child: TabBar(
              controller: _controller,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: AllColors.purple,
                labelColor: AllColors.purple,
                labelStyle: TextStyle(
                  fontSize: 20,
                  color: AllColors.purple,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelColor: AllColors.grey,

                tabs: [
                  Tab(text: 'Home'),
                  Tab(text: 'Message'),
                  Tab(text: 'Menu')
                ]
            ),
          ),
        )
      ),
      body: TabBarView(
        controller: _controller,
          children:[
            ScreenOne(),
            ScreenTwo(),
            ScreenThree()
          ]
      )
    );
  }
}
