
import 'package:flutter/material.dart';
import 'package:widgets_use/config/utiles/all_images.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';

class SliverExampleThree extends StatefulWidget {
  const SliverExampleThree({super.key});

  @override
  State<SliverExampleThree> createState() => _SliverExampleThreeState();
}

class _SliverExampleThreeState extends State<SliverExampleThree> {
  final ScrollController _scrollController = ScrollController();

  bool exp = false;

  @override
  void initState(){
    super.initState();

    _scrollController.addListener((){
      double offset = _scrollController.offset;
      setState((){
        exp = offset > 100 ? true : false;
      });
    });
  }

  // in this example i have used just scroll controller
  // i didn't use LayoutBuilder in this

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
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
            flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(15)
                      ),
                      image: DecorationImage(
                          image: AssetImage(AllImages.mountain),
                          fit: BoxFit.fill),
                    ),
                  ),
                  title: exp == false
                      ? null
                      : Text(
                          'adadadada',
                          style:
                              TextStyle(fontSize: 22, color: AllColors.white),
                        ),
              centerTitle: true,


            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                spacing: 20,
                children: [
                  Container(
                    height: 200,
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AllColors.swedenBlue),
                  ),
                  Container(
                    height: 200,
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AllColors.swedenBlue),
                  ),
                  Container(
                    height: 200,
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AllColors.swedenBlue),
                  ),
                  Container(
                    height: 200,
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AllColors.swedenBlue),
                  ),
                  Container(
                    height: 200,
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AllColors.swedenBlue),
                  ),
                  Container(
                    height: 200,
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AllColors.swedenBlue),
                  ),
                  Container(
                    height: 200,
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AllColors.swedenBlue),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
