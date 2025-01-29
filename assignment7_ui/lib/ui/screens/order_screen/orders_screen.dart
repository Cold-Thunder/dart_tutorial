import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/all_texts.dart';
import 'package:assignment7_ui/ui/screens/menu_screen/menu_screen.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/ui/screens/order_screen/widgets/history_screen.dart';
import 'package:assignment7_ui/ui/screens/order_screen/widgets/ongoing_screen.dart';
import 'package:assignment7_ui/ui/widgets/app_bar_menu_icon_button.dart';
import 'package:assignment7_ui/ui/widgets/app_bar_title_widget.dart';
import 'package:assignment7_ui/ui/widgets/back_icon.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> with SingleTickerProviderStateMixin{
  late TabController _controller;
  bool ongoingActive = true;
  bool historyActive = false;


  void togglingTypes (){
    setState((){
      ongoingActive = !ongoingActive;
      historyActive = !historyActive;
    });
  }

  @override
  void initState(){
    super.initState();
    _controller = TabController(length: 2, vsync: this);
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
        leading: BackIcon(color: AllColors.backIconGrey),
        title: AppBarTitleWidget(title: AllTexts.orderAppBarTitle),
        actions: [
          AppBarMenuIconButton(
            color: AllColors.backIconGrey,
            widget: MenuScreen()
          ),
          SizedBox(width: 15)
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TabBar(
              controller: _controller,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: AllColors.buttonOrange,
                indicatorWeight: 1,
                labelStyle: TextStyles.elevatedButtonStyle.copyWith(color: AllColors.buttonOrange),
                unselectedLabelStyle: TextStyles.elevatedButtonStyle.copyWith(
                  color: AllColors.inactiveTypeGrey
                ),
                splashFactory: NoSplash.splashFactory,
                tabs: [
                  Tab(text: AllTexts.ongoing),
                  Tab(text: AllTexts.history)
                ]
            ),
          ),
        )
      ),
      body: TabBarView(
        controller: _controller,
          children: [
            OngoingScreen(),
            HistoryScreen()
          ]
      )
    );
  }
}
