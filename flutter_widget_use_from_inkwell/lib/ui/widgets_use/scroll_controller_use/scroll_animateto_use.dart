import 'package:flutter/material.dart';
import 'package:widgets_use/ui/widgets_use/scroll_controller_use/scroll_controller_use.dart';
import 'package:widgets_use/ui/widgets_use/scroll_controller_use/widgets/tabbar_buttons.dart';

class ScrollAnimatetoUse extends StatefulWidget {
  const ScrollAnimatetoUse({super.key});

  @override
  State<ScrollAnimatetoUse> createState() => _ScrollAnimatetoUseState();
}

class _ScrollAnimatetoUseState extends State<ScrollAnimatetoUse> {

  final ScrollController _tabbarScrollController = ScrollController();
  final ScrollController _columnScrollController = ScrollController();

  int allListLength = 60;
  List<GlobalKey> itemsKeys = List.generate(60, (index)=>GlobalKey());
  late List<ItemModel> items;

  late GlobalKey clickedKey;

  itemFunction(GlobalKey key, int index){
      double position = index*80;
      if(key.currentContext != null){
        _tabbarScrollController.animateTo(
            position,
            duration: Duration(milliseconds: 1500),
            curve: Curves.linear
        );

        Scrollable.ensureVisible(
          key.currentContext!,
          alignment: 0.0,
          duration: Duration(seconds: 1),
          curve: Curves.linear
        );
        debugPrint('not null');
      }else{
        debugPrint('null');
      }
      setState(() {
        clickedKey = key;
      });
  }


  @override
  void initState(){
    super.initState();
    clickedKey = itemsKeys[0];


    items = List.generate(allListLength, (index)=>ItemModel(title: index, itemKey: itemsKeys[index]));
  }


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Scroll Animate to'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: SizedBox(
            height: 50,
            width: size.width,
            child: ListView.builder(
              controller: _tabbarScrollController,
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index){
                return TabbarButtons(clickedKey: clickedKey, model: items[index], func: itemFunction, index: index);
              }
            ),
          )
        )
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          child: Column(
            children: [
              ListView.separated(
                  controller: _columnScrollController,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: itemsKeys.length,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 20);
                  },
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        itemFunction(itemsKeys[index], index);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        key: itemsKeys[index],
                        height: 300,
                        width: size.width,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          '${index+1}',
                          style: TextStyle(color: Colors.white, fontSize: 33),
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      )
    );
  }
}
