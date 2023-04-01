import 'package:emart/consts/consts.dart';

import '../common_design/applogo_design.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            280.heightBox,
            applogoDesign(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            const Spacer(),
            appversion.text.size(15).white.make(),
            10.heightBox,
          ],
        ),
      ),
    );
  }
}
