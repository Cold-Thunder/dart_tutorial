import 'dart:async';

import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
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
  late int activeInd = 0;

  List<String> images = [
    AllImages.mountain,
    AllImages.mountain,
    AllImages.mountain,
    AllImages.mountain,
    AllImages.mountain,
  ];

  @override
  void initState() {
    super.initState();
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
            padding: const EdgeInsets.all(0.0),
            child: Column(
              spacing: 20,
              children: [
                SizedBox(
                  height: 200,
                  child: CarouselView.weighted(
                    controller: _carouselController,
                    flexWeights: [200],
                    itemSnapping: false,
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
                  ),
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

                // carousel slider page use

                Stack(
                  alignment: Alignment.center,
                  children: [
                    CarouselSlider.builder(

                        options: CarouselOptions(
                          height: 250,
                          aspectRatio: 16 / 13,
                          viewportFraction: 1,
                          clipBehavior: Clip.none,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          enlargeFactor: 1,
                          onPageChanged : (index, reason){
                            setState(() {
                              activeInd = index;
                            });
                          },
                        ),
                        itemCount: images.length,
                        itemBuilder: (context, index, realInd) {
                          return Container(
                            height: 250,
                            width: width,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(images[index]))),
                          );
                        }),
                    Positioned(
                      bottom: 20,
                      child: Container(
                        alignment: Alignment.center,
                        width: width,
                        child: AnimatedSmoothIndicator(
                            activeIndex: activeInd,
                            count: images.length,
                          effect: WormEffect(
                            dotHeight: 10,
                            dotWidth: 10,
                            dotColor: AllColors.white,
                            activeDotColor: AllColors.purple
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
