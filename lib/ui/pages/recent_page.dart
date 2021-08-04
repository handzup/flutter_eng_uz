import 'package:flutter/material.dart';
import 'package:flutter_eng_uz/ui/widgets/search.dart';
import '../../core/theme.dart';
import '../../domain/lemma.dart';
import '../widgets/list_tile.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class RecentPage extends StatefulWidget {
  @override
  _RecentPageState createState() => _RecentPageState();
}

class _RecentPageState extends State<RecentPage> {
  List<Lemma> sort(Box box, String sort) {
    List<Lemma> list = <Lemma>[];
    for (var i = 0; i < box.length; i++) {
      list.add(box.getAt(i));
    }
    if (sort == null || sort.isEmpty) return list.toList();
    return list.where((element) => element.english != null ? element.english.contains(RegExp(sort, caseSensitive: false)) : false).toList();
  }

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const SliverToBoxAdapter(child: SizedBox(height: 12)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            sliver: SliverToBoxAdapter(
              child: SearchFieldComponent(
                onSearchChanged: (v) => setState(() => null),
                onClear: () => print('clear'),
                controller: controller,
              ),
            ),
          ),
        ],
        body: ValueListenableBuilder(
          valueListenable: Hive.box('lemma').listenable(),
          builder: (context, Box box, child) {
            List<Lemma> ln = sort(box, controller.text);
            return ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(height: 12),
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
              Icons.history,
              size: 50,
              color: AppTheme.red,
            ),
          ),
        ),
      ),
    );
  }
}
