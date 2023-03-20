import 'package:emart/common_design/common_button2.dart';
import 'package:emart/common_design/feature_button.dart';
import 'package:emart/consts/consts.dart';

import '../../consts/list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(11),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 60,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  filled: true,
                  fillColor: whiteColor,
                  hintText: "Search here...",
                  hintStyle: TextStyle(color: textfieldGrey),
                ),
              ),
            ),
            10.heightBox,
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    VxSwiper.builder(
                        enlargeCenterPage: true,
                        height: 140,
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        itemCount: brandsListSlider.length,
                        itemBuilder: (context, index) {
                          return Image
                              .asset(
                            brandsListSlider[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .roundedSM
                              .clip(Clip.antiAlias)
                              .margin(const EdgeInsets.symmetric(horizontal: 5))
                              .make();
                        }),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          2,
                              (index) =>
                              commonButton2(
                                  height: context.screenHeight * .13,
                                  width: context.screenWidth / 2.5,
                                  icon: index == 0 ? icTodaysDeal : icFlashDeal,
                                  title:
                                  index == 0 ? "Today's Deal" : "Flash Sale")),
                    ),
                    10.heightBox,
                    VxSwiper.builder(
                        enlargeCenterPage: true,
                        height: 140,
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        itemCount: brandsListSlider2.length,
                        itemBuilder: (context, index) {
                          return Image
                              .asset(
                            brandsListSlider2[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .roundedSM
                              .clip(Clip.antiAlias)
                              .margin(const EdgeInsets.symmetric(horizontal: 5))
                              .make();
                        }),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          3,
                              (index) =>
                              commonButton2(
                                  height: context.screenHeight * .123,
                                  width: context.screenWidth / 3.42,
                                  icon: index == 0
                                      ? icTopCategories
                                      : index == 1
                                      ? icBrands
                                      : icTopSeller,
                                  title: index == 0
                                      ? "Top Categories"
                                      : index == 1
                                      ? "Brands"
                                      : "Top Sellers")),
                    ),
                    15.heightBox,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: "Feature Categories"
                          .text
                          .color(darkFontGrey)
                          .size(19)
                          .fontFamily(semibold)
                          .make(),
                    ),
                    15.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            3,
                                (index) =>
                                Column(
                                  children: [
                                    featureButton(
                                        icon: featureImageList1[index],
                                        title: featureListTitles1[index]),
                                    10.heightBox,
                                    featureButton(
                                        icon: featureImageList2[index],
                                        title: featureListTitles2[index]),
                                  ],
                                )).toList(),
                      ),
                    ),
                    15.heightBox,
                    Container(
                      padding: const EdgeInsets.all(9),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: redColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Feature Product"
                              .text
                              .fontFamily(semibold)
                              .size(18)
                              .white
                              .make(),
                          10.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                6,
                                    (index) =>
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Image.asset(
                                          imgP1,
                                          width: 150,
                                          fit: BoxFit.cover,
                                        ),
                                        5.heightBox,
                                        "fpjpjpije"
                                            .text
                                            .fontFamily(semibold)
                                            .color(darkFontGrey)
                                            .make(),
                                        10.heightBox,
                                        "\$400"
                                            .text
                                            .color(redColor)
                                            .fontFamily(bold)
                                            .size(18)
                                            .make(),
                                        10.heightBox,
                                      ],
                                    )
                                        .box
                                        .white
                                        .margin(const EdgeInsets.symmetric(
                                        horizontal: 5))
                                        .roundedSM
                                        .padding(const EdgeInsets.all(8))
                                        .make(),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    15.heightBox,
                    VxSwiper.builder(
                        enlargeCenterPage: true,
                        height: 140,
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        itemCount: brandsListSlider.length,
                        itemBuilder: (context, index) {
                          return Image
                              .asset(
                            brandsListSlider[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .roundedSM
                              .clip(Clip.antiAlias)
                              .margin(const EdgeInsets.symmetric(horizontal: 5))
                              .make();
                        }),
                    15.heightBox,
                    Align(
                        alignment: Alignment.centerLeft,
                        child: "All Products"
                            .text
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .size(19)
                            .make()),
                    15.heightBox,
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,mainAxisSpacing: 8,crossAxisSpacing: 2,mainAxisExtent: 290), itemBuilder: (context, index){
                     return Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .start,
                        children: [
                          Image.asset(
                            imgP5,
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          const Spacer(),
                          "fpjpjpije"
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .make(),
                          10.heightBox,
                          "\$400"
                              .text
                              .color(redColor)
                              .fontFamily(bold)
                              .size(18)
                              .make(),
                          10.heightBox
                        ],
                      )
                          .box
                          .white
                          .margin(const EdgeInsets.symmetric(
                          horizontal: 5))
                          .roundedSM
                          .padding(const EdgeInsets.all(10))
                          .make();
                    }
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
