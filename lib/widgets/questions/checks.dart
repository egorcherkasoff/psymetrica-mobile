import 'package:flutter/material.dart';

class QuestionChecks extends StatefulWidget {
  const QuestionChecks({super.key});

  @override
  State<QuestionChecks> createState() => _QuestionChecksState();
}

class _QuestionChecksState extends State<QuestionChecks> {
  final List<String> _questionChecks = [];
  final String _imgUrl = "";

  void _onCheck(String option) {
    _questionChecks.contains(option)
        ? _questionChecks.remove(option)
        : _questionChecks.add(option);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 1),
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xffF6F8F9),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _questionText(context),
            _imgUrl != "" ? _questionImage(_imgUrl) : const SizedBox(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _checkTile(context, "вариант1", "Красный"),
                _checkTile(context, "вариант2", "Зеленый"),
                _checkTile(context, "вариант3", "Черный"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  CheckboxListTile _checkTile(
      BuildContext context, String checkValue, String text) {
    return CheckboxListTile(
      value: _questionChecks.contains(checkValue) ? true : false,
      onChanged: (value) {
        setState(
          () {
            _onCheck(checkValue);
          },
        );
      },
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: Theme.of(context).primaryColor,
      title: Text(text, style: Theme.of(context).textTheme.bodyMedium),
    );
  }

  Container _questionImage(String imageUrl) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      height: 250,
      width: double.infinity,
      child: Image.network(
        "https://img.goodfon.ru/original/1280x1024/a/4b/3d-geometric-cube.jpg",
        fit: BoxFit.cover,
      ),
    );
  }

  Text _questionText(BuildContext context) {
    return Text(
      "Выберите Ваши любимые цвета",
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
