import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../domain/lemma.dart';
import '../widgets/list_tile.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with AutomaticKeepAliveClientMixin {
  List<Lemma> getList(Box box) {
    final list = <Lemma>[];
    for (var i = 0; i < box.length; i++) {
      list.add(box.getAt(i));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ValueListenableBuilder(
        valueListenable: Hive.box('lemma').listenable(),
        builder: (context, box, child) {
          final list = getList(box as Box);
          return ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 12),
              physics: ClampingScrollPhysics(),
              padding: EdgeInsets.only(top: 10.0, bottom: 55),
              itemCount: list.length,
              itemBuilder: (context, index) {
                return CustomListTile(
                  lemma: list[index],
                );
              });
        },
        child: Center(
          child: Text('Loading'),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
