import 'package:flutter/material.dart';
import 'package:widgets_use/ui/widgets_use/scroll_controller_use/widgets/tabbar_buttons.dart';

class ScrollControllerUse extends StatefulWidget {
  const ScrollControllerUse({super.key});

  @override
  State<ScrollControllerUse> createState() => _ScrollControllerUse();
}

class _ScrollControllerUse extends State<ScrollControllerUse> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _showItem = GlobalKey();

  Color color = Colors.red;

  List<GlobalKey> itemGlobalKeys = List.generate(30, (index) => GlobalKey());

  late List<ItemModel> items = List.generate(
    30,
    (index) => ItemModel(
      title: index,
      itemKey: itemGlobalKeys[index],
    ),
  );

  late GlobalKey clickedKey = itemGlobalKeys[0];

  itemFinderFunc(GlobalKey key, int ind) {
    if (key.currentContext != null) {
      Scrollable.ensureVisible(key.currentContext!,
          alignment: 0.0, duration: Duration(seconds: 1), curve: Curves.easeIn);
    }

    setState(() {
      clickedKey = key;
    });
  }

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {

    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_showItem.currentContext != null) {
            Scrollable.ensureVisible(_showItem.currentContext!,
                alignment: 0.0,
                duration: Duration(seconds: 1),
                curve: Curves.bounceIn);
          }
        },
        child: Icon(Icons.arrow_upward),
      ),
      appBar: AppBar(
        title: Text('Scroll Controller'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: SizedBox(
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return TabbarButtons(
                      clickedKey: clickedKey,
                      model: items[index],
                      index: index,
                      func: itemFinderFunc);
                }),
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: SizedBox(
          width: size.width,
          child: Column(
            spacing: 10,
            children: [
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 10);
                  },
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      key: itemGlobalKeys[index],
                      height: 200,
                      width: size.width,
                      color: color,
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(fontSize: 33, color: Colors.white),
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

class ItemModel {
  final int title;
  final GlobalKey itemKey;

  ItemModel({required this.title, required this.itemKey});
}
