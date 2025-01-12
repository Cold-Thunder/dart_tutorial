import 'package:flutter/material.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';
import 'package:widgets_use/ui/widgets_use/flutter_tabbar_widget/screen_one.dart';
import 'package:widgets_use/ui/widgets_use/flutter_tabbar_widget/screen_two.dart';

class TabbarExampleOne extends StatefulWidget {
  const TabbarExampleOne({super.key});

  @override
  State<TabbarExampleOne> createState() => _TabbarExampleOneState();
}

class _TabbarExampleOneState extends State<TabbarExampleOne> with SingleTickerProviderStateMixin{

  late TabController _controller;

  @override
  void initState(){
    super.initState();
    _controller = TabController(
        length: 2,
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
        title: Text('Tabbar Example One'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),

          child: Container(
            color: Colors.lightBlueAccent,
            child: TabBar(
              controller: _controller,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: AllColors.orange,
                labelColor: AllColors.orange,
                labelStyle: TextStyle(
                  fontSize: 20,
                  color: AllColors.orange,
                  fontWeight: FontWeight.bold
                ),
                unselectedLabelColor: AllColors.white,
                unselectedLabelStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal
                ),
                tabs: [
                  Tab(text: 'Ongoing'),
                  Tab(text: 'History')
                ]
            ),
          ),
        )
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          ScreenOne(),
          ScreenTwo()
        ]
      ),
    );
  }
}
