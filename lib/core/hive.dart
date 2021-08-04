import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../domain/lemma.dart';

class HiveWrapper extends GetxController {
  Future readByKey({key, name}) async {
    final box = await Hive.openBox(name);
    var secData = Lemma();
    secData = box.get(key.hashCode);
    return secData;
  }

  check(String name) async {
    final box = await Hive.openBox(name);
    if (box != null && box.isNotEmpty) return true;
    return false;
  }

  Future<List<Lemma>> readAll({String name}) async {
    final list = <Lemma>[];
    final box = await Hive.openBox(name);
    for (var i = 0; i < box.length; i++) {
      list.add(box.getAt(i));
    }
    return list;
  }

  Future isFav({int index, String name}) async {
    final openBox = await Hive.openBox(name);
    Lemma lemma = await openBox.get(index);
    Lemma newL = Lemma(
      id: lemma.id,
      english: lemma.english,
      uzbek: lemma.uzbek,
      isFav: !lemma.isFav,
    );
    await openBox.put(index, newL);
  }

  writeAllBox({List<Lemma> item, String name}) async {
    final openBox = await Hive.openBox(name);
    item.forEach((i) async {
      await openBox.put(i.id, i);
    });
  }

  writeToBox({Lemma item, String name}) async {
    final openBox = await Hive.openBox(name);

    await openBox.put(openBox.length, item);
  }
}
