import 'package:flutter/material.dart';
import 'package:flutter_eng_uz/ui/pages/about.dart';
import 'package:flutter_eng_uz/ui/pages/bookmarks_page.dart';
import 'package:flutter_eng_uz/ui/pages/recent_page.dart';
import '../core/hive.dart';
import '../ui/pages/intro_page.dart';
import '../core/scrollbehavior.dart';
import '../core/theme.dart';
import 'package:get/route_manager.dart';

import '../core/theme_controller.dart';
import '../ui/pages/home_page.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  final HiveWrapper hive = Get.find();

  @override
  Widget build(BuildContext context) {
    ThemeController.to.getThemeModeFromPreferences();

    return GetMaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(
            name: '/about',
            page: () => About(),
            transition: Transition.cupertino),
        GetPage(
            name: '/search',
            page: () => RecentPage(),
            transition: Transition.cupertino),
        GetPage(
            name: '/bookmark',
            page: () => BookmarkPage(),
            transition: Transition.cupertino),
        GetPage(
            name: '/intro',
            page: () => IntroPage(),
            transition: Transition.cupertino)
      ],
      title: 'Proverbs about the behaviour',
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      themeMode: ThemeMode.light,
      home: ScrollConfiguration(behavior: MyBehavior(), child: HomePage()),
    );
  }
}
