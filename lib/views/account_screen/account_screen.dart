import 'package:emart/common_design/bg_common.dart';
import 'package:emart/consts/consts.dart';
import 'package:emart/consts/list.dart';
import 'package:emart/views/account_screen/component/details_card.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgCommon(
        child: Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.edit,
                color: whiteColor,
              ),
            ).onTap(() {}),
            Row(
              children: [
                Image.asset(
                  imgProfile2,
                  width: 90,
                  fit: BoxFit.cover,
                ).box.roundedFull.clip(Clip.antiAlias).make(),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "user whofi".text.semiBold.white.make(),
                    8.heightBox,
                    "user@gmail.com".text.white.make()
                  ],
                )),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: whiteColor)),
                    onPressed: () {},
                    child: "Logout".text.semiBold.white.make())
              ],
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsCard(
                    count: "00",
                    title: "In your cart",
                    width: context.screenWidth / 3.45),
                detailsCard(
                    count: "00",
                    title: "In your WishList",
                    width: context.screenWidth / 3.45),
                detailsCard(
                    count: "00",
                    title: "In your Order",
                    width: context.screenWidth / 3.45),
              ],
            ),
            30.heightBox,
            Column(
              children: [
                ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.asset(profileButtonIcons[index],width: 20,),
                        title: profileButtonList[index].text.bold.color(darkFontGrey).make(),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                        height: 10,
                        thickness: 2,
                        color: lightGrey,
                      );
                    },
                    itemCount: profileButtonList.length).box.white.rounded.padding(const EdgeInsets.symmetric(horizontal: 15)).shadowSm.make(),
              ],
            ).box.color(redColor).height(250).padding(const EdgeInsets.all(8)).make()
          ],
        ),
      ),
    ));
  }
}
