import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eng_uz/ui/widgets/divider.dart';
import 'package:flutter_eng_uz/ui/widgets/setting_tile.dart';
import 'package:get/get.dart';

import '../../core/theme_controller.dart';

class MyDrawer extends StatelessWidget {
  bool checkBool(value) {
    if (value == ThemeMode.dark) {
      return true;
    }
    return false;
  }

  switchTheme(value) {
    if (value.themeMode == ThemeMode.dark) {
      ThemeController.to.setThemeMode(ThemeMode.light);
    } else {
      ThemeController.to.setThemeMode(ThemeMode.dark);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Image.asset(
                  'assets/images/icon.png',
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
            ),
            const MainDivider(
              endIdnent: 0,
              indent: 0,
            ),
            Stack(
              children: [
                SettingIconTile(
                  callback: () => Get.toNamed('/bookmark'),
                  icon: CupertinoIcons.person, //CupertinoIcons.sun_dust,
                  title: 'Bookmarks',
                ),
                Positioned(
                    right: 16,
                    bottom: 0,
                    top: 0,
                    child: GetBuilder<ThemeController>(
                        init: ThemeController(),
                        builder: (controller) => Icon(
                              CupertinoIcons.heart,
                              color: controller.themeMode == ThemeMode.dark ? Colors.white : Colors.black,
                            )))
              ],
            ),
            const MainDivider(
              endIdnent: 0,
              indent: 0,
            ),
            Stack(
              children: [
                SettingIconTile(
                  callback: () => Get.toNamed('/search'),
                  icon: CupertinoIcons.person, //CupertinoIcons.sun_dust,
                  title: 'Search',
                ),
                Positioned(
                    right: 16,
                    bottom: 0,
                    top: 0,
                    child: GetBuilder<ThemeController>(
                        init: ThemeController(),
                        builder: (controller) => Icon(
                              CupertinoIcons.search,
                              color: controller.themeMode == ThemeMode.dark ? Colors.white : Colors.black,
                            )))
              ],
            ),
            const MainDivider(
              endIdnent: 0,
              indent: 0,
            ),
            Stack(
              children: [
                SettingIconTile(
                  callback: () => Get.toNamed('/intro'),
                  icon: CupertinoIcons.info, //CupertinoIcons.sun_dust,
                  title: 'Lug\'at haqida',
                ),
                Positioned(
                    right: 16,
                    bottom: 0,
                    top: 0,
                    child: GetBuilder<ThemeController>(
                        init: ThemeController(),
                        builder: (controller) => Icon(
                              CupertinoIcons.info,
                              color: controller.themeMode == ThemeMode.dark ? Colors.white : Colors.black,
                            )))
              ],
            ),
            const MainDivider(
              endIdnent: 0,
              indent: 0,
            ),
            Stack(
              children: [
                SettingIconTile(
                  callback: () => Get.toNamed('/about'),
                  icon: CupertinoIcons.person, //CupertinoIcons.sun_dust,
                  title: 'Muallif haqida',
                ),
                Positioned(
                    right: 16,
                    bottom: 0,
                    top: 0,
                    child: GetBuilder<ThemeController>(
                        init: ThemeController(),
                        builder: (controller) => Icon(
                              CupertinoIcons.person_crop_circle,
                              color: controller.themeMode == ThemeMode.dark ? Colors.white : Colors.black,
                            )))
              ],
            ),
            const MainDivider(
              endIdnent: 0,
              indent: 0,
            ),
            GetBuilder<ThemeController>(
              init: ThemeController(),
              builder: (value) => Stack(
                children: [
                  SettingIconTile(
                    callback: () => switchTheme(value),
                    icon: value.themeMode == ThemeMode.dark ? CupertinoIcons.moon : CupertinoIcons.sun_dust,
                    title: value.themeMode == ThemeMode.dark ? 'Tungi holat' : 'Kunduzgi holat',
                  ),
                  Positioned(
                      right: 16,
                      bottom: 0,
                      top: 0,
                      child: CupertinoSwitch(
                        onChanged: (_) => switchTheme(value),
                        value: checkBool(value.themeMode),
                      ))
                ],
              ),
            ),
            const MainDivider(
              endIdnent: 0,
              indent: 0,
            ),
          ],
        ),
      ),
    );
  }
}
