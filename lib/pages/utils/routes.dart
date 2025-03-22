import 'package:jmpjx001h/pages/bottom_nav_bar_screen.dart';
//import 'package:jmpjx001h/pages/home_screen.dart';
import 'package:jmpjx001h/pages/setting_screen.dart';

//import 'package:jmpjx001g/pages/day5/tab_screen.dart';

class AppRoutes {
  static String home = '/home';
  static String setting = '/setting-screen';
  static String bottomNavBar = '/bottom-nav-screen';
  static String tab = '/tab-screen';
}

final routes = {
  AppRoutes.home: (context) => BottomNavBarScreen(),
  AppRoutes.setting: (context) => SettingScreen(),
  AppRoutes.bottomNavBar: (context) => BottomNavBarScreen(),
  //AppRoutes.tab: (context) => TabScreen(),
};
