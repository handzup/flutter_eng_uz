import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchFieldComponent extends StatefulWidget {
  final TextEditingController controller;
  final Function onSearchChanged;
  final VoidCallback onClear;
  final double width;
  final String hint;
  const SearchFieldComponent({
    this.width,
    this.controller,
    @required this.onSearchChanged,
    this.onClear,
    this.hint = '',
  });

  @override
  _SearchFieldComponentState createState() => _SearchFieldComponentState();
}

class _SearchFieldComponentState extends State<SearchFieldComponent> {
  void clearField() {
    widget.onClear();
    widget.controller.clear();
  }

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 36,
        width: widget.width ?? double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: CupertinoTextField(
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
            onChanged: (value) {
              widget.onSearchChanged(value);
            },
            controller: widget.controller,
            placeholderStyle: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
            keyboardType: TextInputType.visiblePassword,
            prefix: Padding(
              padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
              child: Icon(CupertinoIcons.search),
            ),
            cursorColor: Colors.black,
            placeholder: widget.hint,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
            ),
            clearButtonMode: OverlayVisibilityMode.editing,
          ),
        ),
      );
}
