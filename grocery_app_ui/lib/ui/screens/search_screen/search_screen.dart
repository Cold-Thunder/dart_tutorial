import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/config/models/product_model.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/all_images.dart';
import 'package:grocery_app_ui/config/utiles/all_texts.dart';
import 'package:grocery_app_ui/config/utiles/styles/all_text_styles.dart';
import 'package:grocery_app_ui/ui/screens/search_screen/widgets/recent_search_keywords.dart';
import 'package:grocery_app_ui/ui/screens/search_screen/widgets/search_screen_heading.dart';
import 'package:grocery_app_ui/ui/screens/search_screen/widgets/sorter_bottom_sheet.dart';
import 'package:grocery_app_ui/ui/widgets/back_arrow_button.dart';
import 'package:grocery_app_ui/ui/widgets/product_card.dart';
import 'package:grocery_app_ui/ui/widgets/search_bar_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _controller = TextEditingController();

  bool showTrending = true;

  List<ProductModel> products = AllTexts.productsCards;
  List<ProductModel> bestDealCards = AllTexts.bestDealsCards;

  // recent search collections
  List<String> recentSearch = [];

  List<ProductModel> searchResult = [];

  // search icon function
  searchIconFunc() {
    setState(() {
      recentSearch.add(_controller.text.toString());
      showTrending = false;
      // searching filter method
      searchResult = bestDealCards.where((item) {
        return item.title
            .toLowerCase()
            .contains(_controller.text.toString().toLowerCase());
      }).toList();
    });
  }

  // keyword clicked function
  keyWordClickedFunc(String keyword) {
    setState(() {
      _controller.text = keyword;
    });
  }

  // filter icon function
  filterIconFunc() {
    showModalBottomSheet(
        context: context,
        barrierColor: AllColors.transparent,
        barrierLabel: 'Sorter drop down',
        builder: (BuildContext context) {
          return SorterBottomSheet();
        });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AllColors.white,
      appBar: AppBar(leading: BackArrowButton(), actions: [
        Visibility(
          visible: showTrending == false,
          child: InkWell(
            onTap: () {
              filterIconFunc();
            },
            radius: 10,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.asset(AllImages.filterIconPng,
                      height: 24, width: 24)),
            ),
          ),
        ),
        const SizedBox(width: 15)
      ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: SizedBox(
            width: width,
            child: Column(
              children: [
                SearchBarWidget(
                  controller: _controller,
                  searchIconFunc: searchIconFunc,
                ),
                const SizedBox(
                  height: 10,
                ),
                // keyword views
                Visibility(
                  visible: recentSearch.isNotEmpty,
                  child: SizedBox(
                    width: width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10,
                      children: [
                        // heading
                        SearchScreenHeading(heading: AllTexts.recentSearch),
                        // items
                        Wrap(
                          children: recentSearch.map((item) {
                            return RecentSearchKeywords(
                              keyword: item,
                              keywordClick: keyWordClickedFunc,
                            );
                          }).toList(),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // trending section
                Visibility(
                  visible: showTrending,
                  child: SizedBox(
                      width: width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SearchScreenHeading(heading: AllTexts.trending),
                          SizedBox(
                              height: 230,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: products.length,
                                  itemBuilder: (context, index) {
                                    return ProductCard(model: products[index]);
                                  }))
                        ],
                      )),
                ),
                // show results
                Visibility(
                  visible: showTrending == false,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SearchScreenHeading(heading: AllTexts.showingResult),
                          Text('"${_controller.text.toString()}"',
                              style: AllTextStyles.searchScreenHeading)
                        ],
                      ),
                      searchResult.isNotEmpty
                          ? SingleChildScrollView(
                              child: GridView.builder(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: width < 420
                                      ? 2
                                      : width < 630
                                          ? 3
                                          : 4,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  mainAxisExtent: 230,
                                ),
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: searchResult.length,
                                itemBuilder: (context, index) {
                                  return ProductCard(
                                      model: searchResult[index]);
                                },
                              ),
                            )
                          : Container(
                              margin: const EdgeInsets.only(top: 30),
                              child: SearchScreenHeading(
                                  heading: AllTexts.noItemFound),
                            ),
                    ],
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
