import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  _launchURL(String mail) async {
    var url = 'mailto:$mail';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              'Об авторе',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: Image.asset('assets/images/user1.png'),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        """     Хамраева Нилуфар Хамидуллаевна старший преподаватель  Ташкентского политехнического университетета имени Ислама Каримова, автор более трех учебно-методических комлексов, трех методических пособий, двух монографий, более 35 статей. Получила большое признание от своих учеников и коллег. Опыт и практика набранные в течении долгих лет в преподавательской деятельности способствовали созданию данной книги. 
     Словарь, составленный автором, является результатами ее научного труда по изучению и научного исследования социолингвистических особенностей народных пословиц, связанные с нравственностью и правилами этического поведения на примере узбекских и английских пословиц поскольку пословицы в жизни народов Англии и Узбекистана имеют важное значение в воспитании подрастающего поколения. 
     В своей преподавательской деятельности автор книги заметила, что многие студенты при изучении английского языка сталкиваются с проблемами корректного перевода пословиц или нахождению им альтернатив поскольку до настоящего времени не были собраны в одной книге схожие пословицы, используемые двумя народами в обиходе.
     Книга как раз-таки станет решением данной проблемы в области социолингвистики, поскольку, данный словарь поможет составлению речи путем использования пословиц двух народов при преподавании, а также изучении английского и узбекского языка 
""",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                )
              ],
            ),
            Divider(
              height: 1,
            ),
            const SizedBox(height: 20),
            Text(
              'About author',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 40),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: Image.asset('assets/images/user1.png'),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        """     Nilufar Khamraeva is a senior lecturer at the Tashkent Polytechnic University named after Islam Karimov, the author of more than three educational and methodological complexes, three methodological manuals, two monographs, more than 35 articles. She received great recognition from her students and colleagues. The experience and practice gained over many years in teaching contributed to the creation of this book.
     The dictionary compiled by the author is the results of her scientific work on the study and scientific research of sociolinguistic features of folk proverbs related to morality and rules of ethical behavior on the example of Uzbek and English proverbs, since proverbs in the life of the peoples of England and Uzbekistan are important in the upbringing of the younger generation.
     In her teaching activity, the author of the book noticed that many students, when learning English, face problems with the correct translation of proverbs or finding alternatives to them, since until now similar proverbs used by the two peoples in everyday life have not been collected in one book.
     The book will just be the solution to this problem in the field of sociolinguistics, since this dictionary will help to compose speech by using proverbs of the two peoples when teaching, as well as studying English and Uzbek.
""",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
