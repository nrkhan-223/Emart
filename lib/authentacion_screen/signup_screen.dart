import '../common_design/applogo_design.dart';
import '../common_design/bg_common.dart';
import '../common_design/common_button.dart';
import '../common_design/common_textfild.dart';
import '../consts/consts.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                    commonTextField(hint: "Enter your password", title: "Password"),
                    5.heightBox,
                    commonTextField(hint: "Enter same password here", title: "Retype password"),
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
                    commonButton(
                        color: redColor,
                        title: "Login",
                        textColor: whiteColor,
                        onPress: () {})
                        .box
                        .width(context.screenWidth - 50)
                        .make()
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
