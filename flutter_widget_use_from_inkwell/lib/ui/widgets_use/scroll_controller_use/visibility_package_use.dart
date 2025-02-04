import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class VisibilityPackageUse extends StatefulWidget {
  const VisibilityPackageUse({super.key});

  @override
  State<VisibilityPackageUse> createState() => _VisibilityPackageUseState();
}

class _VisibilityPackageUseState extends State<VisibilityPackageUse> {

  final ItemScrollController _itemScrollController = ItemScrollController();
  final ItemPositionsListener _itemPositionsListener = ItemPositionsListener.create();

  List<bool> fadeItems = List.generate(30, (index)=>false);

  @override
  void initState(){
    super.initState();

    _itemPositionsListener.itemPositions.addListener((){
      final positions = _itemPositionsListener.itemPositions.value;
      setState((){
        for(final position in positions){
            if(position.itemLeadingEdge >= 0.8 && position.itemLeadingEdge <= 1){
              fadeItems[position.index] = true;
            }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Visibility Package Use')
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SizedBox(
            width: size.width,
            child: Column(
              children: [
                  ScrollablePositionedList.separated(
                    itemScrollController: _itemScrollController,
                    itemPositionsListener: _itemPositionsListener,
                    shrinkWrap: true,
                    separatorBuilder: (context, index){
                      return SizedBox(height: 10);
                    },
                      itemCount: fadeItems.length,
                      itemBuilder: (context, index){
                      return AnimatedOpacity(
                        opacity: fadeItems[index] ? 1 : 0,
                        duration: Duration(milliseconds: 500),
                        child: Container(
                          height: 100,
                          width: size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blue
                          )
                        ),
                      );
                      },
                  )
              ]
            )
          ),
        )
      )
    );
  }
}
