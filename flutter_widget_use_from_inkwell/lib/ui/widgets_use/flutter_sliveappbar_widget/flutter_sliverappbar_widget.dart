import 'package:flutter/material.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';
import 'package:widgets_use/ui/widgets_use/flutter_sliveappbar_widget/sliver_example_three.dart';
import 'package:widgets_use/ui/widgets_use/flutter_sliveappbar_widget/sliver_example_two.dart';

class FlutterSliverappbarWidget extends StatefulWidget {
  const FlutterSliverappbarWidget({super.key});

  @override
  State<FlutterSliverappbarWidget> createState() =>
      _FlutterSliverappbarWidgetState();
}

class _FlutterSliverappbarWidgetState extends State<FlutterSliverappbarWidget> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.purple[100],
        body: CustomScrollView(slivers: [
          SliverAppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                double changedHeight = constraints.maxHeight;
                bool isExpended = changedHeight > 100;
                return FlexibleSpaceBar(
                  background: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(top: 70),
                      decoration: BoxDecoration(
                        color: AllColors.gerRed,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(20),
                        ),
                      ),
                      child: Text('adsdasdadasd',
                          style:
                              TextStyle(fontSize: 20, color: AllColors.white))),
                  title: isExpended
                      ? null
                       : Text(
                    'Sliverappbar Use',
                    style: TextStyle(color: AllColors.white),
                  ),
                  centerTitle: true,

                );
              },
            ),
              actions: [
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.more_vert, size: 22, color: AllColors.white)
                  ),
              ]
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(spacing: 20, children: [
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context)=>SliverExampleTwo()
                    )
                  );
                },
                child: Text('Sliver Example two')
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context)=>SliverExampleThree()
                        )
                    );
                  },
                  child: Text('Sliver Example Three')
              ),
              Container(
                  height: 200,
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AllColors.swedenBlue)),
              Container(
                  height: 200,
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AllColors.swedenBlue)),
              Container(
                  height: 200,
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AllColors.swedenBlue)),
              Container(
                  height: 200,
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AllColors.swedenBlue)),
              Container(
                  height: 200,
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AllColors.swedenBlue)),
            ]),
          ))
        ]));
  }
}
