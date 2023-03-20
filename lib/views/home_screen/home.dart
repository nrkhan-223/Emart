import 'package:emart/consts/consts.dart';
import 'package:emart/controler/home_controler.dart';
import 'package:emart/views/account_screen/account_screen.dart';
import 'package:emart/views/cart_screen/cart_screen.dart';
import 'package:emart/views/categories_screen/categories-screen.dart';
import 'package:emart/views/home_screen/home_screen.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, width: 26), label: "Home"),
      BottomNavigationBarItem(
          icon: Image.asset(icCategories, width: 26), label: "Categories"),
      BottomNavigationBarItem(
          icon: Image.asset(icCart, width: 26), label: "Cart"),
      BottomNavigationBarItem(
          icon: Image.asset(icProfile, width: 26), label: "Account"),
    ];
    var navBody = [
    const HomeScreen(),
    const CategoriesScreen(),
    const CartScreen(),
    const AccountScreen(),
    ];
    return Scaffold(
    body: Column(
    children: [
    Obx(()=> Expanded(child: navBody.elementAt(controller.currentNavIndex.value)))
    ],
    ),
    bottomNavigationBar: Obx(()=>
    BottomNavigationBar(
    currentIndex: controller.currentNavIndex.value,
    selectedItemColor: redColor,
    selectedLabelStyle: const TextStyle(
    fontFamily: bold
    ),
    backgroundColor: whiteColor,
    type: BottomNavigationBarType.fixed,
    items: navbarItem,
    onTap: (value){
    controller.currentNavIndex.value=value;
    },
    )
    ,
    )
    ,
    );
  }
}

