import 'dart:async';

import 'package:flutter/material.dart';
import 'package:widgets_use/config/utiles/all_images.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';

class ImageSliderUse extends StatefulWidget {
  ImageSliderUse({super.key});

  @override
  State<ImageSliderUse> createState() => _ImageSliderUseState();
}

class _ImageSliderUseState extends State<ImageSliderUse> {
  final PageController _pageViewController = PageController();
  final CarouselController _carouselController = CarouselController();
  late Timer _timer;
  late double ind = 0;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if(ind < 5){
        _carouselController.jumpTo(ind);
        setState(() {
          ind++;
        });
      }else{
        setState(() {
          ind = 0;
        });
      }
    });
  }

  @override
  void dispose() {
    _carouselController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Slider'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AllColors.gerRed)),
                SizedBox(
                  height: 200,
                  child: CarouselView.weighted(
                    controller: _carouselController,
                    flexWeights: [1,7,1],
                    itemSnapping: true,
                    children: [
                      Container(
                        height: 200,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: AssetImage(AllImages.mountain),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: AssetImage(AllImages.mountain),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: AssetImage(AllImages.mountain),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: AssetImage(AllImages.mountain),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: AssetImage(AllImages.mountain),
                              fit: BoxFit.fill),
                        ),
                      )
                    ],
                  )
                ),

                // carousel slider with page view
                SizedBox(
                  height: 200,
                  child: PageView.builder(
                    controller: _pageViewController,
                    pageSnapping: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 200,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: AssetImage(AllImages.mountain),
                              fit: BoxFit.fill),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
