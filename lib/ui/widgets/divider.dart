import 'package:flutter/material.dart';

class MainDivider extends StatelessWidget {
  final double indent, endIdnent;
  final double tickness;
  final Color color;
  const MainDivider({Key key, this.tickness = 1, this.indent = 16, this.endIdnent = 16, this.color = const Color.fromRGBO(236, 243, 250, 1)}) : super(key: key);
  @override
  Widget build(BuildContext context) => Divider(
        height: tickness,
        thickness: tickness,
        color: color,
        endIndent: endIdnent,
        indent: indent,
      );
}
