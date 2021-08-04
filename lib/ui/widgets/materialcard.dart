import 'package:flutter/material.dart';
import 'package:flutter_eng_uz/core/theme_controller.dart';
import 'package:get/get.dart';

class MaterialCard extends StatelessWidget {
  final Widget child;
  final double dividerHeright;
  final Color color;
  final double indent;
  final double endIndent;
  const MaterialCard({Key key, this.child, this.endIndent = 0, this.indent = 0, this.dividerHeright = 1, this.color = const Color.fromRGBO(194, 200, 208, 1)}) : super(key: key);
  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
            ),
            child: child,
          ),
          Positioned(
            bottom: 0.5,
            right: 0,
            left: 0,
            child: GetBuilder<ThemeController>(
              init: ThemeController(),
              builder: (controller) => Divider(
                thickness: dividerHeright,
                height: dividerHeright,
                color: controller.themeMode == ThemeMode.dark ? Colors.grey : color,
                endIndent: endIndent,
                indent: indent,
              ),
            ),
          )
        ],
      );
}
