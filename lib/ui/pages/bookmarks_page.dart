import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../domain/lemma.dart';
import '../widgets/list_tile.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class BookmarkPage extends StatelessWidget {
  List<Lemma> getAll(Box box) {
    List<Lemma> list = <Lemma>[];
    for (var i = 0; i < box.length; i++) {
      list.add(box.getAt(i));
    }
    return list.where((element) => element.isFav == true).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saqlamalar'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ValueListenableBuilder(
            valueListenable: Hive.box('lemma').listenable(),
            builder: (context, Box box, child) {
              List<Lemma> ln = getAll(box);
              if (ln.isEmpty) return child;
              return ListView.separated(
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 12),
                  physics: ClampingScrollPhysics(),
                  padding: EdgeInsets.only(top: 10.0, bottom: 55),
                  itemCount: ln.length,
                  itemBuilder: (context, index) {
                    return CustomListTile(
                      lemma: ln[index],
                    );
                  });
            },
            child: Center(
              child: Icon(
                CupertinoIcons.square_favorites_alt,
                size: 50,
                color: Color(0xFF8a00d4),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
