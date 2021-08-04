import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eng_uz/ui/widgets/drawer.dart';

import '../../core/theme_controller.dart';
import 'main_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController _pageController;

  @override
  void initState() {
    super.initState();
    ThemeController.to.setFirst();
    _pageController = TabController(length: 3, initialIndex: 2, vsync: this)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MyDrawer(),
      key: _scaffoldKey,
      resizeToAvoidBottomInset: true,
      backgroundColor: Theme.of(context).primaryColor,
      body: MainPage(),
    );
  }

  void animateTo(int index) => _pageController.animateTo(index, duration: const Duration(milliseconds: 200), curve: Curves.linearToEaseOut);
}
