import 'package:emart/common_design/common_button.dart';
import 'package:emart/consts/consts.dart';
import 'package:emart/consts/list.dart';

class ItemDetails extends StatelessWidget {
  final String title;

  const ItemDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title.text.fontFamily(bold).color(darkFontGrey).make(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: darkFontGrey,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outlined,
                color: darkFontGrey,
              )),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VxSwiper.builder(
                      enlargeCenterPage: true,
                      height: 340,
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          imgFc3,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      }),
                  15.heightBox,
                  title.text
                      .fontFamily(bold)
                      .size(22)
                      .fontFamily(bold)
                      .color(darkFontGrey)
                      .make(),
                  10.heightBox,
                  VxRating(
                    onRatingUpdate: (value) {},
                    normalColor: textfieldGrey,
                    selectionColor: golden,
                    size: 25,
                    stepInt: true,
                    count: 5,
                  ),
                  10.heightBox,
                  "\$3000"
                      .text
                      .color(redColor)
                      .fontFamily(bold)
                      .size(18)
                      .make(),
                  10.heightBox,
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Seller"
                              .text
                              .white
                              .fontFamily(semibold)
                              .size(15)
                              .make(),
                          4.heightBox,
                          "In House Brand"
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .size(16)
                              .make(),
                        ],
                      )),
                      const CircleAvatar(
                        backgroundColor: whiteColor,
                        child: Icon(
                          Icons.message_rounded,
                          color: darkFontGrey,
                        ),
                      ),
                    ],
                  )
                      .box
                      .height(60)
                      .padding(const EdgeInsets.symmetric(horizontal: 15))
                      .color(textfieldGrey)
                      .make(),
                  20.heightBox,
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Color: ".text.color(textfieldGrey).make(),
                          ),
                          Row(
                            children: List.generate(3,
                                (index) => VxBox()
                                    .size(40, 40)
                                    .roundedFull
                                    .color(Vx.randomPrimaryColor)
                                    .margin(const EdgeInsets.symmetric(
                                        horizontal: 3))
                                    .make()),
                          )
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),

                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Quality: ".text.color(textfieldGrey).make(),
                          ),
                          Row(
                           children: [IconButton(onPressed: (){}, icon: const Icon(Icons.remove)),
                             "0".text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                             IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
                             10.heightBox,
                             "(0 available)".text.fontFamily(semibold).color(textfieldGrey).make(),

                           ],
                          ),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
                      Row(
                        children: [

                          SizedBox(
                            width: 100,
                            child: "Total: ".text.color(textfieldGrey).make(),
                          ),
                          "\$0.00".text.color(redColor).bold.size(16).make(),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
                    ],
                  ).box.white.roundedSM.margin(const EdgeInsets.all(10)).shadowSm.make(),
                  10.heightBox,
                  "Description".text.size(18).fontFamily(bold).color(darkFontGrey).make(),
                  10.heightBox,
                  "heru9heuqrh uidq9ryqhy qahffhfbnjmkf iqwjhiqhf qinfn ffif weifipfjpefjqwer ".text.size(14).fontFamily(semibold).color(darkFontGrey).make(),
                  10.heightBox,
                  ListView(
                    physics: const NeverScrollableScrollPhysics(),

                    shrinkWrap: true,
                    children: List.generate(itemButtonList.length, (index) => ListTile(
                      title: itemButtonList[index].text.semiBold.color(darkFontGrey).make(),
                      trailing: const Icon(Icons.arrow_forward),
                    )
                    ),
                  ),
                  15.heightBox,
                  "Product You May Like".text.bold.size(16).color(darkFontGrey).make(),
                  15.heightBox,
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
                                  imgP3,
                                  width: 120,
                                  fit: BoxFit.cover,
                                ),
                                5.heightBox,
                                "fpjpjpije"
                                    .text
                                    .fontFamily(semibold)
                                    .color(darkFontGrey)
                                    .make(),
                                "\$400"
                                    .text
                                    .color(redColor)
                                    .fontFamily(bold)
                                    .size(18)
                                    .make(),
                                10.heightBox,
                              ],
                            )
                                .box.height(190)
                                .white
                                .margin(const EdgeInsets.symmetric(
                                horizontal: 5))
                                .roundedSM
                                .padding(const EdgeInsets.all(5))
                                .make(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: commonButton(
                color: redColor,
                title: "Add to cart",
                textColor: whiteColor,
                onPress: () {}),
          )
        ],
      ),
    );
  }
}
