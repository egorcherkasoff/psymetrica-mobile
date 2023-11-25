import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:psymetrica/components/notification_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PsyMetrica'),
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int idx) {
          if (idx == 0) {
            Navigator.pushNamed(context, "/");
          } else if (idx == 1) {
            Navigator.pushNamed(context, "/tests");
          } else {
            Navigator.pushNamed(context, "/register");
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Главная",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Тесты",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Профиль",
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 9,
        itemBuilder: (context, index) {
          return NotificationCard();
        },
      ),
    );
  }
}


// Scrollbar(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
//           child: Column(
//             children: [
//               Card(
//                 child: Container(
//                   padding:
//                       const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
//                   alignment: Alignment.centerLeft,
//                   child: Column(
//                     children: [
//                       Container(
//                         alignment: Alignment.centerLeft,
//                         child: Column(
//                           children: [
//                             Text(
//                               "С возвращением!",
//                               style: Theme.of(context).textTheme.displayLarge,
//                               textAlign: TextAlign.left,
//                             ),
//                             Text(
//                               "Вы начали проходить тест 'название теста'. Хотите продолжить?",
//                               style: Theme.of(context).textTheme.displayMedium,
//                             )
//                           ],
//                         ),
//                       ),
//                       Container(
//                         margin: const EdgeInsets.only(top: 8.0),
//                         child: LinearPercentIndicator(
//                           padding: const EdgeInsets.only(left: 0.0, right: 8.0),
//                           lineHeight: 10.0,
//                           backgroundColor: Colors.black26,
//                           trailing: Text(
//                             "10/12",
//                             style: Theme.of(context).textTheme.displaySmall,
//                           ),
//                           percent: 0.8,
//                           barRadius: const Radius.circular(3),
//                           progressColor: Theme.of(context).primaryColor,
//                         ),
//                       ),
//                       Container(
//                         alignment: Alignment.centerLeft,
//                         child: TextButton(
//                           onPressed: () {},
//                           child: Text(
//                             "> Перейти",
//                             style: Theme.of(context).textTheme.displayMedium,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 alignment: Alignment.centerLeft,
//                 margin:
//                     const EdgeInsets.symmetric(horizontal: 4.0, vertical: 12.0),
//                 child: Text(
//                   "Последняя активность",
//                   style: Theme.of(context).textTheme.displayLarge,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),