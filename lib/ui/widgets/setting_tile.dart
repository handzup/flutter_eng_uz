import 'package:flutter/material.dart';

class SettingIconTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final VoidCallback callback;
  const SettingIconTile({@required this.icon, @required this.callback, Key key, this.title = '', this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: callback,
        child: Container(
          color: Theme.of(context).primaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          child: Row(
            children: [
              // GetBuilder<ThemeController>(
              //   init: ThemeController(),
              //   builder: (controller) => SizedBox(
              //     height: 24,
              //     width: 24,
              //     child: Icon(
              //       icon,
              //       color: controller.themeMode == ThemeMode.dark ? Colors.white : Colors.black,
              //     ),
              //   ),
              // ),
              //  const SizedBox(width: 13),
              Text(
                title,
                style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.w500, fontSize: 15, color: color),
              )
            ],
          ),
        ),
      );
}
