import 'dart:async';

import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:widgets_use/config/utiles/all_images.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';
import 'package:widgets_use/config/utiles/styles/text_styles.dart';

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
  late int pageCounter = 0;

  List<String> images = [
    'https://cdn.pixabay.com/photo/2021/11/21/21/14/mountain-6815304_1280.jpg',
    'https://cdn.pixabay.com/photo/2021/10/11/18/58/lake-6701636_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/02/14/03/03/ama-dablam-2064522_960_720.jpg',
    'https://cdn.pixabay.com/photo/2023/06/21/14/17/mountain-8079469_1280.jpg',
    'https://cdn.pixabay.com/photo/2023/05/23/14/38/mountain-8012898_640.jpg'
  ];

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(Duration(seconds: 4), (timer) {
      if (pageCounter <= images.length-1) {
        debugPrint(pageCounter.toString());
        _pageViewController.nextPage(
            duration: Duration(seconds: 1), curve: Curves.easeIn);
        setState(() {
          pageCounter++;
        });
      } else{
        _pageViewController.jumpToPage(0);
        setState(() {
          pageCounter = 0;
        });
      }
    });
  }

  @override
  void dispose() {
    _carouselController.dispose();
    _pageViewController.dispose();
    _timer.cancel();
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
                Text('Carousel with PageView', style: TextStyles.flagHeading),
                // carousel slider with page view
                Stack(alignment: Alignment.center, children: [
                  SizedBox(
                    height: 200,
                    child: PageView.builder(
                      controller: _pageViewController,
                      pageSnapping: true,
                      onPageChanged: (index) {
                        setState(() {
                          pageCounter = index;
                        });
                      },
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 200,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                image: NetworkImage(images[index]),
                                fit: BoxFit.fill),
                          ),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    child: SizedBox(
                        width: width,
                        child: Align(
                          alignment: Alignment.center,
                          child: AnimatedSmoothIndicator(
                            activeIndex: pageCounter,
                            count: images.length,
                            onDotClicked: (index) {
                              _pageViewController.jumpToPage(index);
                              setState(() {
                                pageCounter = index;
                              });
                            },
                            effect: WormEffect(
                              activeDotColor: AllColors.purple,
                              dotColor: AllColors.white,
                              dotHeight: 10,
                              dotWidth: 10,
                            ),
                          ),
                        )),
                  )
                ]),

                // carousel slider page use
                Text('CarouselSlider package', style: TextStyles.flagHeading),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CarouselSlider.builder(
                        options: CarouselOptions(
                          initialPage: activeInd,
                          height: 250,
                          aspectRatio: 16 / 13,
                          viewportFraction: 1,
                          clipBehavior: Clip.none,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          enlargeFactor: 1,
                          onPageChanged: (index, reason) {
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
                                image: NetworkImage(images[index]),
                              ),
                            ),
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
                          onDotClicked: (index) {
                            setState(() {
                              activeInd = index;
                            });
                          },
                          effect: WormEffect(
                              dotHeight: 10,
                              dotWidth: 10,
                              dotColor: AllColors.white,
                              activeDotColor: AllColors.purple,
                              type: WormType.thin),
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
