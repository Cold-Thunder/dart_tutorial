import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class PositionedScrollControllerSliver extends StatefulWidget {
  const PositionedScrollControllerSliver({super.key});

  @override
  State<PositionedScrollControllerSliver> createState() =>
      _PositionedScrollControllerSliverState();
}

class _PositionedScrollControllerSliverState
    extends State<PositionedScrollControllerSliver> {
  late ItemScrollController _verticalScrollController;
  final ItemPositionsListener _verticalPositionListener =
  ItemPositionsListener.create();

  late ItemScrollController _horizontalScrollController;
  final ItemPositionsListener _horizontalPositionsListener =
  ItemPositionsListener.create();

  late ScrollController _sliverScrollController;


  // this is working
  trackingFunc(int ind){
      _sliverScrollController.animateTo(
          ind*110,
          duration: Duration(milliseconds: 300),
          curve: Curves.elasticIn);
  }

  @override
  void initState() {
    super.initState();

    _sliverScrollController = ScrollController();

    _verticalScrollController = ItemScrollController();
    _horizontalScrollController = ItemScrollController();

    // Vertical position listener to track the first visible item
    _verticalPositionListener.itemPositions.addListener(() {
      final positionValue = _verticalPositionListener.itemPositions.value;

      if (positionValue.isNotEmpty) {
        final firstVisibleItemIndex = positionValue.first.index;
        print("First Visible Vertical Item: $firstVisibleItemIndex");
      }
    });

    // this is working
    _sliverScrollController.addListener(() {
      int index = (_sliverScrollController.offset/110).round();
      _horizontalScrollController.scrollTo(
          alignment: 0.5,
          index: index,
          duration: Duration(milliseconds: 300),
        curve: Curves.easeIn
      );
      print((_sliverScrollController.offset/110).round());
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        controller: _sliverScrollController,
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            backgroundColor: Colors.red,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: CustomSliverPersistenHeader(
              child: Container(
                color: Colors.white,
                child: SizedBox(
                  height: 50,
                  child: ScrollablePositionedList.builder(
                    itemScrollController: _horizontalScrollController,
                    itemPositionsListener: _horizontalPositionsListener,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 60,
                    itemBuilder: (context, index) {
                      return tabbarButton(index, trackingFunc);
                    },
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return Container(
                  key: ValueKey(index),
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 100,
                  width: width,
                  color: Colors.blue,
                  child: Text(
                    '$index',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                );
              },
              childCount: 60,
            ),
          ),

          // this won't work
          // SliverToBoxAdapter(
          //
          //   child: ScrollablePositionedList.builder(
          //     itemScrollController: _verticalScrollController,
          //     itemPositionsListener: _verticalPositionListener,
          //     shrinkWrap: true,
          //       physics: NeverScrollableScrollPhysics(),
          //
          //     itemCount: 60,
          //           itemBuilder: (context, index){
          //             return Container(
          //               alignment: Alignment.center,
          //               margin: const EdgeInsets.only(bottom: 10),
          //               height: 100,
          //               width: width,
          //               color: Colors.red,
          //               child: Text(index.toString(), style: TextStyle(
          //                 fontSize: 22,
          //                 color: Colors.white
          //               ))
          //             );
          //           })
          // )
        ],
      ),
    );
  }
}

class CustomSliverPersistenHeader extends SliverPersistentHeaderDelegate {
  final Widget child;

  CustomSliverPersistenHeader({required this.child});
  @override
  double get minExtent => 55;

  @override
  double get maxExtent => 55;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(
      child: child,
    );
  }
}

Widget tabbarButton(int index, Function func) {
  return InkWell(
    onTap: (){
      func(index);
    },
    child: Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 40,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(15)),
      child: Text('$index',
          style: TextStyle(fontSize: 22, color: Colors.white)),
    ),
  );
}
