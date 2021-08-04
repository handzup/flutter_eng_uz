import 'package:flutter/material.dart';
import 'package:flutter_eng_uz/ui/widgets/bordered_card.dart';

import '../../domain/lemma.dart';
import 'animated_icon.dart';

class CustomListTile extends StatelessWidget {
  final Lemma lemma;
  const CustomListTile({Key key, @required this.lemma}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: BorderedCard(
          padding: 0,
          border: 12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    constraints: BoxConstraints(minHeight: 40),
                    decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Theme.of(context).canvasColor, Colors.white],
                        )),
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(child: Text(lemma.english, style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 18))),
                        const SizedBox(width: 12),
                      ],
                    ),
                  ),
                  Positioned(top: 8, right: 8, child: CustomAnimatedIcon(index: lemma.id))
                ],
              ),
              Container(
                constraints: BoxConstraints(minHeight: 40),
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Theme.of(context).primaryColor, Colors.white],
                    )),
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                child: Text(lemma.uzbek, style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 18)),
              ),
              // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              //   Expanded(
              //     child: RichText(
              //         text: TextSpan(
              //             text: 'english:',
              //             style: TextStyle(color: Color(0xFFf782c2), fontSize: 17),
              //             children: [TextSpan(text: lemma.english, style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 18))])),
              //   ),
              //   const SizedBox(width: 12),
              //   CustomAnimatedIcon(index: lemma.id),
              // ]),
              // if (lemma.uzbek != null)
              //   Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       const SizedBox(height: 6),
              //       RichText(
              //           text: TextSpan(
              //               text: 'uzbek: ',
              //               style: TextStyle(color: Colors.blue, fontSize: 17),
              //               children: [TextSpan(text: lemma.uzbek, style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 18))])),
              //     ],
              //   ),
              // const SizedBox(height: 6),
              // RichText(
              //     text: TextSpan(
              //         text: '', style: TextStyle(color: Color(0xFFf9c46b), fontSize: 13), children: [TextSpan(text: lemma.desc, style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 18))])),
            ],
          )),
    );
  }
}
// ListTile(
//             onTap: () => Get.toNamed('/details', arguments: lemma),
//             trailing: IconButton(
//               onPressed: () => print('book '),
//               icon: CustomAnimatedIcon(
//                 index: lemma.id,
//               ),
//             ),
//             title: Text(
//               lemma.lemma ?? '',
//               style: Theme.of(context).textTheme.bodyText1,
//             )),