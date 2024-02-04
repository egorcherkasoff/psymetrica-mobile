import 'package:flutter/material.dart';

class QuestionIntro extends StatelessWidget {
  const QuestionIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 1),
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xffF6F8F9),
        ),
        child: Column(
          children: [
            Text(
              "Здесь какой то информационный текст",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
