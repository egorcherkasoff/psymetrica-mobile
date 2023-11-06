import 'package:flutter/material.dart';
// import 'package:psymetrica/screens/home.dart';
import 'package:psymetrica/screens/welcome.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xff1095c0),
        textTheme: TextTheme(
          displayLarge: GoogleFonts.montserrat(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
          displayMedium: GoogleFonts.montserrat(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          displaySmall: GoogleFonts.montserrat(
              fontSize: 15.0, fontWeight: FontWeight.w500),
        ),
      ),
      initialRoute: "/welcome",
      routes: {
        '/': (context) => (Welcome()),
      },
    );
  }
}

// class ScreenSkeleton extends StatelessWidget {
//   const ScreenSkeleton({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('PsyMetrica'),
//         backgroundColor: Theme.of(context).primaryColor,
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: const EdgeInsets.all(0.0),
//           children: [
//             DrawerHeader(
//               padding: const EdgeInsets.all(0.0),
//               margin: const EdgeInsets.all(0.0),
//               decoration: const BoxDecoration(
//                 color: Color(0xFF1095c0),
//               ),
//               child: Center(
//                 child: Column(
//                   children: [
//                     const Icon(
//                       Icons.person,
//                       color: Colors.black,
//                       size: 120.0,
//                     ),
//                     Text(
//                       "Ivan Ivanov",
//                       style: Theme.of(context).textTheme.displayMedium,
//                     ),
//                     Text(
//                       "@ivan2014",
//                       style: Theme.of(context).textTheme.displaySmall,
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             ListTile(
//               onTap: () {
//                 Navigator.pushNamed(context, '/welcome');
//               },
//               title: Row(
//                 children: [
//                   const Icon(
//                     Icons.home,
//                     color: Colors.grey,
//                     size: 32.0,
//                   ),
//                   const SizedBox(
//                     width: 15.0,
//                   ),
//                   Text("Главная",
//                       style: Theme.of(context).textTheme.displayMedium)
//                 ],
//               ),
//             ),
//             ListTile(
//               onTap: () {},
//               title: Row(
//                 children: [
//                   const Icon(
//                     Icons.draw,
//                     color: Colors.grey,
//                     size: 32.0,
//                   ),
//                   const SizedBox(
//                     width: 15.0,
//                   ),
//                   Text("Мои тесты",
//                       style: Theme.of(context).textTheme.displayMedium)
//                 ],
//               ),
//             ),
//             ListTile(
//               onTap: () {},
//               title: Row(
//                 children: [
//                   const Icon(
//                     Icons.settings,
//                     color: Colors.grey,
//                     size: 32.0,
//                   ),
//                   const SizedBox(
//                     width: 15.0,
//                   ),
//                   Text("Профиль",
//                       style: Theme.of(context).textTheme.displayMedium)
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: const Home(),
//     );
//   }
// }
