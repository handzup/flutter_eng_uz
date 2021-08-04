import 'package:flutter/material.dart';

class BorderedCard extends StatelessWidget {
  final Widget child;
  final double padding;
  final double border;

  const BorderedCard({
    Key key,
    this.child,
    this.border = 4,
    this.padding = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: BorderRadius.circular(border),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(border),
            border: Border.all(
              width: 0.5,
              color: Colors.black26,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: child ?? const SizedBox.shrink(),
        ),
      );
}
