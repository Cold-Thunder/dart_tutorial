import 'package:flutter/material.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';
import 'package:widgets_use/ui/widgets_use/layout_design/widgets/drawer.dart';

class LayoutDesign extends StatelessWidget {
  const LayoutDesign({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Design'),
        leading: Visibility(
          visible: width <= 420,
          child: Builder(
                  builder: (context) {
                    return InkWell(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Icon(Icons.menu, size: 22, color: AllColors.white),
                    );
                  },
                ),
        )

      ),
      drawer: Drawer(
          child: DrawerDesign(),
      ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            Visibility(
              visible: width <= 420 ? false : true,
              child: Expanded(
                flex: 2,
                child: DrawerDesign(),
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
