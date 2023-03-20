import 'package:get/get.dart';

import '../../common_design/applogo_design.dart';
import '../../common_design/bg_common.dart';
import '../../common_design/common_button.dart';
import '../../common_design/common_textfild.dart';
import '../../consts/consts.dart';



class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isCheck=false;

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
                10.heightBox,
                "Open an account on Emart".text.white.size(21).semiBold.make(),
                15.heightBox,
                Column(
                  children: [
                    commonTextField(hint: "Enter your name", title: "Name"),
                    5.heightBox,
                    commonTextField(hint: "Enter your email", title: "Email"),
                    5.heightBox,
                    commonTextField(
                        hint: "Enter your password", title: "Password"),
                    5.heightBox,
                    commonTextField(
                        hint: "Enter same password here",
                        title: "Retype password"),
                    5.heightBox,
                    Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {},
                            child: "Forget password"
                                .text
                                .size(17)
                                .fontFamily(semibold)
                                .make())),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: redColor,
                            checkColor: whiteColor,
                            value: isCheck,
                            onChanged: (newValue) {
                            setState(() {
                              isCheck=newValue!;
                            });
                            }),
                        7.widthBox,
                        Expanded(
                          child: RichText(
                              text: const TextSpan(
                                children: [
                                 TextSpan(
                                     text: "I agree to the",
                                     style: TextStyle(
                                       fontSize: 14,
                                       fontFamily: regular,
                                       color: fontGrey,
                                     )
                                 ),
                                  TextSpan(
                                      text: "Terms and Conditions ",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: bold,
                                        color: redColor,
                                      )
                                  ),
                                  TextSpan(
                                      text: "&",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: regular,
                                        color: fontGrey,
                                      )
                                  ),
                                  TextSpan(
                                      text: " Privacy Policy",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: bold,
                                        color: redColor,
                                      )
                                  ),

                                ]
                                ),
                          ),
                        ),
                      ],
                    ),
                    commonButton(
                            color: isCheck? redColor:lightGrey,
                            title: "Signup",
                            textColor: whiteColor,
                            onPress: () {})
                        .box
                        .width(context.screenWidth - 50)
                        .make(),
                    10.heightBox,
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        "Already have an account?".text.bold.color(fontGrey).make(),5.widthBox,
                        "Login".text.bold.color(redColor).size(16).make().onTap(() {Get.back();})

                      ],
                    )
                  ],
                )
                    .box
                    .white
                    .rounded
                    .padding(const EdgeInsets.all(16))
                    .width(context.screenWidth - 60)
                    .shadowSm
                    .make(),
              ],
            ),
          )),
    );
  }
}
