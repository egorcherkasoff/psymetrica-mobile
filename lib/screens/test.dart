import 'package:flutter/material.dart';
import 'package:psymetrica/screens/test_finish.dart';
import 'package:psymetrica/widgets/questions/images.dart';
import 'package:psymetrica/widgets/questions/intro.dart';
import 'package:psymetrica/widgets/questions/matrix_multi.dart';
import 'package:psymetrica/widgets/questions/matrix_single.dart';
import 'package:psymetrica/widgets/questions/textarea.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:psymetrica/widgets/questions/radios.dart';
import 'package:psymetrica/widgets/questions/scale.dart';
import 'package:psymetrica/widgets/questions/checks.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Название теста',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.white),
        ),
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
                  height: 43,
                ),
                const QuestionScale(),
                const QuestionRadios(),
                const QuestionChecks(),
                const QuestionTextArea(),
                const QuestionTextArea(imgUrl: "cfjgfjg"),
                const QuestionIntro(),
                const QuestionMatrixSingle(),
                const QuestionMatrixMulti(),
                const QuestionImages(),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12,
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _nextButton(context),
                      _prevButton(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
          _testProgress(context),
        ],
      ),
    );
  }

  SizedBox _prevButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        style: Theme.of(context).outlinedButtonTheme.style,
        child: const Text(
          "Назад",
        ),
      ),
    );
  }

  SizedBox _nextButton(BuildContext context) {
    return SizedBox(
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
        style: Theme.of(context).elevatedButtonTheme.style,
        child: const Text(
          "Далее",
        ),
      ),
    );
  }

  Positioned _testProgress(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      top: 0,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color(0xffF6F8F9),
          border: Border.all(
            color: Colors.black12,
            width: 1,
          ),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
        ),
        child: LinearPercentIndicator(
          leading: Text(
            "Прогресс",
            style: Theme.of(context).textTheme.labelMedium,
          ),
          trailing: Text(
            "3/10",
            style: Theme.of(context).textTheme.labelMedium,
          ),
          backgroundColor: const Color(0xffd5dce2),
          lineHeight: 10,
          barRadius: const Radius.circular(8),
          progressColor: const Color(0xff1095c1),
          percent: .3,
        ),
      ),
    );
  }
}
