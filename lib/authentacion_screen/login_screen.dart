import 'package:emart/authentacion_screen/signup_screen.dart';
import 'package:emart/common_design/applogo_design.dart';
import 'package:emart/common_design/bg_common.dart';
import 'package:emart/common_design/common_button.dart';
import 'package:emart/consts/list.dart';
import 'package:get/get.dart';

import '../common_design/common_textfild.dart';
import '../consts/consts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return bgCommon(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
          body: Center(
        child: Column(
          children: [
            (context.screenHeight * .12).heightBox,
            applogoDesign(),
            13.heightBox,
            " Log in to Emart".text.white.size(22).semiBold.make(),
            20.heightBox,
            Column(
              children: [
                5.heightBox,
                commonTextField(hint: "Enter your email", title: "Email"),
                5.heightBox,
                commonTextField(hint: "Enter your password", title: "Password"),
                10.heightBox,
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {},
                        child: "Forget password"
                            .text
                            .size(17)
                            .fontFamily(semibold)
                            .make())),
                1.heightBox,
                commonButton(
                        color: redColor,
                        title: "Login",
                        textColor: whiteColor,
                        onPress: () {})
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                5.heightBox,
                "Or,Create a new account"
                    .text
                    .color(fontGrey)
                    .semiBold
                    .size(17)
                    .make(),
                commonButton(
                        color: lightGolden,
                        title: "Signup",
                        textColor: redColor,
                        onPress: () {
                          Get.to( ()=>const SignupScreen() );
                        })
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                7.heightBox,
                "Log in with".text.semiBold.size(15).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3,
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: lightGrey,
                          radius: 27,
                              child: Image.asset(socialIconsList[index],width: 36,),
                            ),
                      )),
                )
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 65).shadowSm
                .make(),
          ],
        ),
      )),
    );
  }
}
