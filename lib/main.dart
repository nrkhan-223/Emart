import 'package:emart/views/splash_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'consts/consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: darkFontGrey
          )
        ),
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}
