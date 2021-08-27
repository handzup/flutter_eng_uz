import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  """LUG’AT HAQIDA QISQACHA MA’LUMOT""",
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  """      Mazkur  “Ta’lim va tarbiyaga oid o’zbek va ingliz xalq maqollari”ning lug’ati o’zbek lug’atchiligining ushbu yo’nalishda yaratilgan ilk asar sifatida muhim ahamiyat kasb etadi. Ushbu lug’atning yaratilishiga o’zbek va ingliz xalqi so’zlashuvida xalq maqollarining taa’lim va tarbiyada qo’llanilishi katta ahamiyatga ega ekanligi, xar ikki xalq og’zaki ijodida odob-axloq qoidalariga oid ko’plab deyarli bir xil mohiyatga ega maqollarning mavjudligi, biroq ingliz o’zbek tilini o’qitish hamda o’rganish jarayonida ushbu maqollarning tarjimalarini qo’llashda ayrim noaniqliklar va muammolarning yuzaga kelayotgani sabab bo’ldi. Ushbu lug’at xalq og’zaki ijodiga doir bo’lgan adabiyotlarda keltirilgan maqollarni o’rganish va ularni to’plash jarayonida yaratildi. Ushbu ta’lim tarbiyaga oid o’zbek va ingliz xalq maqollaring eng ommabop xalq orasida  muntazam ravishda qo’llaniladigan 704 ga yaqin maqollar yigindisi aynan shu lug’atda to’plandi. Ushbu lug’at umum ta’lim, o’rta maxsus  ta’lim va oliy talim muassasalarida shuningdek davlat ta’lim muassasalaridan tashqari qo’shimcha ingliz tilini o’qitish kurslarida shu bilan bir qatorda oliy ta’limdan keyingi ta’lim doktorantura tadqiqotchilari, professor-o‘qituvchilari leksikologiya, leksikografiya, tarjimashunoslik va chog‘ishtirma tilshunoslik fanlarini o‘qitishda, kurs va diplom ishlarini, ilmiy tadqiqotlarni olib borishda amaliy manba sifatida foydalanishlari mumkin
      Xozirgi kunda muhim mavzulardan biri xisoblangan ta’lim va tarbiyaga ko’rsatilayotgan e’tibor bizni dolzarb va bahsli mavzuga qo‘l urishimizga, bu orqali esa mavjud leksikografik bo‘shliqni ma’lum darajada to‘ldirishga ruhlantirdi.
      Lug‘at foydalanuvchilari tomonidan bildirilgan qimmatli fikr va mulohazalar, shuningdek, lug‘atni mukammallashtirish maqsadida bildirilgan har qanday taklif va tavsiyalar uchun mualliflar oldindan o’z minnaddorchiliklarini izhor etib qoladilar.
                  """,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontSize: 15, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 20),
                Text("""MAS’UL MUHARRIR:""",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 15)),
                const SizedBox(height: 8),
                Text("Pedagogika fanlari nomzodi dosent F.I.Ikramxanova",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 15, fontWeight: FontWeight.w400)),
                const SizedBox(height: 8),
                Text("Filologiya fanlari nomzodi, dotsent G. Mustayeva",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 15, fontWeight: FontWeight.w400)),
                SizedBox(height: 12),
                const SizedBox(height: 8),
                Text("""TAQRIZCHILAR""",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 15)),
                const SizedBox(height: 8),
                Text("Filologiya fanlari nomzodi, dotsent: F. Djo’rayeva",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 15, fontWeight: FontWeight.w400)),
                SizedBox(height: 24),
              ],
            ),
          )
        ],
      ),
    );
  }
}
