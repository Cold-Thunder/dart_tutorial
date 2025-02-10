import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:widgets_use/ui/widgets_use/scroll_controller_use/scroll_controller_use.dart';
import 'package:widgets_use/ui/widgets_use/scroll_controller_use/widgets/positioned_advance_tab_button.dart';

class ScrollPositionTracking extends StatefulWidget {
  const ScrollPositionTracking({super.key});

  @override
  State<ScrollPositionTracking> createState() => _ScrollPositionTrackingState();
}

class _ScrollPositionTrackingState extends State<ScrollPositionTracking> {
  final ItemScrollController _verticalScrollController = ItemScrollController();
  final ItemScrollController _horizontalScrollController =
      ItemScrollController();

  final ItemPositionsListener _itemPositionsListener =
      ItemPositionsListener.create();
  final ItemPositionsListener _horizontalPositionsListener = ItemPositionsListener.create();

  List<GlobalKey> itemsKeys = List.generate(60, (index) => GlobalKey());

  int itemIndex = 0;

  tabButtonFunc(int ind) {

    _horizontalScrollController.scrollTo(
      alignment: 0.4,
      index: ind,
      duration: Duration(milliseconds: 800),
      curve: Curves.linear
    );

    _verticalScrollController.scrollTo(
      index: ind,
      duration: Duration(milliseconds: 800),
      curve: Curves.linear,
    );

    setState(() {
      itemIndex = ind;
    });
  }

  @override
  void initState() {
    super.initState();

    //vertical items scrolling
    _itemPositionsListener.itemPositions.addListener(() {
      final positionValue = _itemPositionsListener.itemPositions.value;

      if(positionValue.isNotEmpty){
        setState((){
          itemIndex = positionValue.first.index;
        });
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Position Tracking'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: SizedBox(
            height: 50,
            child: ScrollablePositionedList.builder(
              itemScrollController: _horizontalScrollController,
              itemPositionsListener: _horizontalPositionsListener,
              scrollDirection: Axis.horizontal,
              itemCount: itemsKeys.length,
              itemBuilder: (context, index) {
                return PositionedAdvanceTabButton(
                  clickedInd: itemIndex,
                  index: index,
                  model: ItemModel(title: index, itemKey: itemsKeys[index]),
                  tabButtonFunc: tabButtonFunc,
                );
              },
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SizedBox(
          width: size.width,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 100,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(15),),
                child: Text(
                  '${itemIndex + 1}',
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
              ),
              Expanded(
                child: ScrollablePositionedList.separated(
                  itemScrollController: _verticalScrollController,
                  itemPositionsListener: _itemPositionsListener,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 20);
                  },
                  shrinkWrap: true,
                  itemCount: itemsKeys.length,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue),
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
