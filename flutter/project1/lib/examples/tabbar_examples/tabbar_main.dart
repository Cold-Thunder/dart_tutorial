import 'package:flutter/material.dart';
import 'package:project1/examples/tabbar_examples/screens/menu_screen.dart';
import 'package:project1/examples/tabbar_examples/tabbar_home.dart';
import 'package:project1/examples/tabbar_examples/utiles/colors/tabbar_all_colors.dart';
import 'package:project1/examples/tabbar_examples/utiles/styles/tabbar_text_styles.dart';
import 'package:project1/examples/tabbar_examples/utiles/texts/tabbar_texts.dart';

class TabBarMain extends StatefulWidget{
  const TabBarMain({super.key});
  @override
  State<TabBarMain> createState()=> _TabBarMainState();
}


class _TabBarMainState extends State<TabBarMain> with SingleTickerProviderStateMixin{
  int tabBarChildNumbers = 2;
  late TabController _tabController;

  List<String> titles = [TabBarTexts.homeTile, TabBarTexts.menuTile];

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: tabBarChildNumbers, vsync: this);

    _tabController.addListener((){
      if(_tabController.indexIsChanging){
          setState((){});
      }
    });

  }

  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: TabBarTexts.tabbarText,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          titleTextStyle: TabBarAllTextStyles.tabbarAppBarTextStyle,
          backgroundColor: TabbarAllColors.tabbarPurple,
          iconTheme: const IconThemeData(
            color: Colors.white
          )
        )
      ),
      home: DefaultTabController(
        length: tabBarChildNumbers,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: Text(titles[_tabController.index]),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(40),
              child:  TabBar(
                controller: _tabController,
                  labelColor: TabbarAllColors.tabbarWhite,
                  unselectedLabelColor:Colors.grey,
                  tabAlignment: TabAlignment.fill,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Colors.white,
                  tabs: const [
                    Icon(Icons.home, size: 35, ),
                    Icon(Icons.menu, size: 35, )
                  ]
              )
            )
          ),
          body: TabBarView(
            controller: _tabController,
              children: [
                TabBarHome(),
                TabbarMenuScreen()
              ]
          ),
        )
      )
    );
  }
}