import 'package:emart/common_design/bg_common.dart';
import 'package:emart/consts/consts.dart';
import 'package:emart/views/categories_screen/item_details.dart';
import 'package:get/get.dart';

class CategoriesDetails extends StatelessWidget {
  final String title;
  const CategoriesDetails({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgCommon(
      child: Scaffold(
        appBar: AppBar(
          title:title.text.fontFamily(bold).make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:List.generate(6, (index) => "fhuioahru".text.fontFamily(semibold).color(fontGrey).makeCentered().box.white.size(110, 55).rounded.margin(const EdgeInsets.symmetric(horizontal: 4)).make()),
                ),
              ),
              30.heightBox,
              Expanded(
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,mainAxisSpacing: 8,crossAxisSpacing: 8,mainAxisExtent: 250), itemBuilder: (context, index){
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start,
                    children: [
                      Image.asset(
                        imgP5,
                        width: 200,
                        height: 150,
                        fit: BoxFit.cover,
                      ),

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
                      .make().onTap(() {
                     Get.to(()=>const ItemDetails(title: "fpjpjpije"));
                  });
                }
                ),



              )
            ],
          ),
        ),
      )
    );
  }
}
