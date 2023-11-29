import 'package:flutter/material.dart';
import 'package:psymetrica/widgets/test_progress.dart';
import 'package:psymetrica/widgets/tests/radios.dart';
import 'package:psymetrica/widgets/tests/scale.dart';
import 'package:psymetrica/widgets/tests/checks.dart';
import 'package:psymetrica/widgets/tests/images.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Главная'),
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          const SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 70,
                ),
                TestScale(),
                TestRadios(),
                TestChecks(),
                // TestImages(),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: TestProgress(),
          ),
          Positioned(
            bottom: 0,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/");
                  },
                  splashColor: Theme.of(context).primaryColor,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    alignment: Alignment.center,
                    height: 48.0,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(color: Colors.black12),
                        right: BorderSide(color: Colors.black12),
                      ),
                    ),
                    child: Text(
                      "Назад",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/test/finish");
                  },
                  splashColor: Theme.of(context).primaryColor,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    alignment: Alignment.center,
                    height: 48.0,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(color: Colors.black12),
                        left: BorderSide(color: Colors.black12),
                      ),
                    ),
                    child: Text(
                      "Далее",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
