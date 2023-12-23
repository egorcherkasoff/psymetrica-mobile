import 'package:flutter/material.dart';
import 'package:psymetrica/screens/test_finish.dart';
import 'package:psymetrica/widgets/questions/textarea.dart';
import 'package:psymetrica/widgets/test_progress.dart';
import 'package:psymetrica/widgets/questions/radios.dart';
import 'package:psymetrica/widgets/questions/scale.dart';
import 'package:psymetrica/widgets/questions/checks.dart';

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
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 70,
                ),
                const QuestionScale(),
                const QuestionRadios(),
                const QuestionChecks(),
                const QuestionTextArea(),
                const QuestionTextArea(imgUrl: "cfjgfjg"),
                // TestImages(),
                Card(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                  elevation: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const TestFinish();
                                  },
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Theme.of(context).primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: Text(
                              "Далее",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                  width: 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: Text(
                              "Назад",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontSize: 16,
                                      color: Theme.of(context).primaryColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
        ],
      ),
    );
  }
}
