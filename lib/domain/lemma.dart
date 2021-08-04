import 'package:hive/hive.dart';

part 'lemma.g.dart';

@HiveType(typeId: 0)
class Lemma {
  @HiveField(0)
  //@JsonKey(fromJson: toNull)
  final String english;
  @HiveField(1)
  // @JsonKey(fromJson: toNull)
  final String uzbek;
  @HiveField(2)
  // @JsonKey(fromJson: toNull)
  // @JsonKey(defaultValue: false)
  final bool isFav;
  @HiveField(3)
  //@JsonKey(fromJson: toInt)
  final int id;
  Lemma({this.english, this.uzbek, this.isFav, this.id});
  factory Lemma.fromJson(Map<String, dynamic> json) => Lemma(
        id: int.parse(json['id'] as String),
        isFav: false,
        english: json['english'] as String ?? null,
        uzbek: json['uzbek'] as String ?? null,
      );
  // Map<String, dynamic> toJson() => _$LemmaToJson(this);

  // static toNull(String str) => str != null
  //     ? str.isEmpty
  //         ? null
  //         : str
  //     : null;
  // static toList(str) {
  //   if (str != null) {
  //     if (str.isEmpty) {
  //       return null;
  //     }
  //   }
  //   if (str is List) {
  //     final temp = <String>[];
  //     str.forEach((element) {
  //       temp.add(element);
  //     });
  //     return temp;
  //   } else {
  //     final temp = <String>[];
  //     temp.add(str);
  //     return temp;
  //   }
  // }

  static int toInt(String val) => int.parse(val);
}
