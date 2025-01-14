import 'package:flutter/material.dart';
import 'package:widgets_use/config/utiles/all_images.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';

class SliverExampleTwo extends StatefulWidget {
  const SliverExampleTwo({super.key});

  @override
  State<SliverExampleTwo> createState() => _SliverExampleTwoState();
}

class _SliverExampleTwoState extends State<SliverExampleTwo> {
  final ScrollController _scrollController = ScrollController();

  bool exp = false;

  @override
  void initState(){
    super.initState();

    _scrollController.addListener((){
      double offset = _scrollController.offset;

      setState(() {
        exp = offset > 100 ? true : false;
      });
    });
  }

  @override
  void dispose(){
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        // using controller for changing appbar color
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            backgroundColor: exp ? AllColors.purple : AllColors.transparent,
            actions: [
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_vert, size: 22, color: AllColors.white)
              )
            ],
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints){
                double changedHeight = constraints.maxHeight;
                bool expanded = changedHeight > 100;
                return FlexibleSpaceBar(
                  title: expanded
                      ? null : Text('Sliver Example two', style: TextStyle(color: AllColors.white)),
                  centerTitle: true,
                  background: Container(
                    decoration: BoxDecoration(
                      color: AllColors.swedenBlue,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(30)
                      ),
                      image: DecorationImage(
                        image: AssetImage(AllImages.mountain),
                        fit: BoxFit.fill

                      )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100, width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(
                                  AllImages.mountain,
                              ),
                              fit: BoxFit.fill
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1,1),
                                color: AllColors.black,
                                blurRadius: 12
                              )
                            ]
                          )
                        )
                      ]
                    )
                  ),

                );
              }
            )
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                spacing: 20,
                children: [
                  Container(
                      height: 200,
                      width: width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AllColors.swedenBlue)),Container(
                      height: 200,
                      width: width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AllColors.swedenBlue)),Container(
                      height: 200,
                      width: width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AllColors.swedenBlue)),Container(
                      height: 200,
                      width: width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AllColors.swedenBlue)),
                ]
              ),
            ),
          )
        ]
      )
    );
  }
}
