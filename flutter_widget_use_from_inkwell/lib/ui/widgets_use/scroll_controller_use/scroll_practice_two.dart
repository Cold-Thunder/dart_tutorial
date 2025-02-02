import 'package:flutter/material.dart';
import 'package:widgets_use/ui/widgets_use/scroll_controller_use/scroll_controller_use.dart';
import 'package:widgets_use/ui/widgets_use/scroll_controller_use/widgets/tabbar_buttons.dart';

class ScrollPracticeTwo extends StatefulWidget {
  const ScrollPracticeTwo({super.key});

  @override
  State<ScrollPracticeTwo> createState() => _ScrollPracticeTwoState();
}

class _ScrollPracticeTwoState extends State<ScrollPracticeTwo> {
  final ScrollController _scrollController = ScrollController();

  List<GlobalKey> itemsKeys = List.generate(20, (index) => GlobalKey());
  late List<ItemModel> items;

  late GlobalKey _clickedKey;


  tabBarButtonFunc(GlobalKey key){
    if(key.currentContext != null){
      Scrollable.ensureVisible(
        key.currentContext!,
        alignment: 0.0,
        duration: Duration(milliseconds: 500)
      );
      debugPrint('not null');
    }else{
      debugPrint('null');
    }

    setState((){
      _clickedKey = key;
    });
  }


  @override
  void initState(){
    super.initState();
    items = List.generate(20, (index)=>ItemModel(title: index, itemKey: itemsKeys[index]));
    _clickedKey = itemsKeys[0];


  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: Text('Scroll Controller 2'),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: SizedBox(
              height: 50,
              width: size.width,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: itemsKeys.length,
                itemBuilder: (context, index){
                  return TabbarButtons(clickedKey: _clickedKey, model: items[index], func: tabBarButtonFunc);
                }
              ),
            ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          child: Column(
            children: [
              ListView.separated(
                controller: _scrollController,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: itemsKeys.length,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 20);
                  },
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        tabBarButtonFunc(itemsKeys[index]);
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
      ),
    );
  }
}
