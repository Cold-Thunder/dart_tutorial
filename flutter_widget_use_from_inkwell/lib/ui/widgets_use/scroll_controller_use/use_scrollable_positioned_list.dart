import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';
import 'package:widgets_use/ui/widgets_use/scroll_controller_use/scroll_controller_use.dart';
import 'package:widgets_use/ui/widgets_use/scroll_controller_use/widgets/tabbar_buttons.dart';

class UseScrollablePositionedList extends StatefulWidget {
  const UseScrollablePositionedList({super.key});

  @override
  State<UseScrollablePositionedList> createState() =>
      _UseScrollablePositionedListState();
}

class _UseScrollablePositionedListState
    extends State<UseScrollablePositionedList> {
  final ItemScrollController _scrollController = ItemScrollController();
  final ItemScrollController _horizontalController = ItemScrollController();

  List<GlobalKey> itemsKeys = List.generate(60, (index) => GlobalKey());

  late List<ItemModel> items;

  late GlobalKey _clickedKey;


  clickedFunc(GlobalKey key, int ind){
    _scrollController.scrollTo(
      index: ind,
      duration: Duration(seconds: 1),
      curve: Curves.easeIn
    );

    _horizontalController.scrollTo(
        index: ind,
        duration: Duration(seconds: 1),
      curve: Curves.easeIn
    );
      setState(() {
        _clickedKey = key;
      });
  }


  @override
  void initState() {
    super.initState();

    items = List.generate(
        60, (index) => ItemModel(title: index, itemKey: itemsKeys[index]));
    _clickedKey = itemsKeys[0];

  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: Text('Scrollable positioned list'),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: SizedBox(
                height: 40,
                child: ScrollablePositionedList.builder(
                    itemScrollController: _horizontalController,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: items.length,
                    itemBuilder: (context, index){
                      return TabbarButtons(clickedKey: _clickedKey, model: items[index], index: index, func: clickedFunc);
                    }
                ),
              ),
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _scrollController.scrollTo(
              index: 30,
              duration: Duration(milliseconds: 500),
              curve: Curves.easeIn
          );
        },
        child: Icon(Icons.add)
      ),
      body: SizedBox(
        width: size.width,
        child: Column(
          children: [
            Flexible(
              child: ScrollablePositionedList.separated(
                itemScrollController: _scrollController,
                  itemCount: items.length,
                  separatorBuilder: (context, index){
                    return SizedBox(height: 20);
                  },
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        clickedFunc(itemsKeys[index],index);
                      },
                      child: Container(
                        key: itemsKeys[index],
                        alignment: Alignment.center,
                        height: 300,
                        width: size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.red),
                        child: Text(
                         '${index+1}',
                          style: TextStyle(fontSize: 33, color: Colors.white),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
