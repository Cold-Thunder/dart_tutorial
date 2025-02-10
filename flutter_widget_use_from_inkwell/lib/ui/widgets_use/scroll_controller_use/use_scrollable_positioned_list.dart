import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
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

    _clickedKey = itemsKeys[0];

  }

  @override
  void dispose(){
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: Text('Scrollable positioned list'),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Container(
                margin: const EdgeInsets.only(bottom: 5),
                height: 40,
                child: ScrollablePositionedList.builder(
                    itemScrollController: _horizontalController,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: itemsKeys.length,
                    itemBuilder: (context, index){
                      return TabbarButtons(clickedKey: _clickedKey, model: ItemModel(title: index, itemKey: itemsKeys[index]), index: index, func: clickedFunc);
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          width: size.width,
          child: Column(
            children: [
              Expanded(
                child: ScrollablePositionedList.separated(
                  itemScrollController: _scrollController,
                    itemCount: itemsKeys.length,
                    shrinkWrap: true,
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
      ),
    );
  }
}
