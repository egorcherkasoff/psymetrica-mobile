import 'package:flutter/material.dart';

class QuestionRadios extends StatefulWidget {
  const QuestionRadios({super.key});

  @override
  State<QuestionRadios> createState() => _QuestionRadiosState();
}

class _QuestionRadiosState extends State<QuestionRadios> {
  int _currentOption = 0;

  final String _imgUrl = "";

  void _changeOption(int option) {
    setState(() {
      _currentOption = option;
    });
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
                _radioTile(context, 1, "Да"),
                _radioTile(context, 2, "Иногда"),
                _radioTile(context, 3, "Нет"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Text _questionText(BuildContext context) {
    return Text(
      "Когда я один я чувствую себя уверенно",
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }

  RadioListTile<int> _radioTile(BuildContext context, int value, String text) {
    return RadioListTile(
      title: Text(text, style: Theme.of(context).textTheme.labelMedium),
      value: value,
      activeColor: Theme.of(context).primaryColor,
      groupValue: _currentOption,
      onChanged: (value) {
        _changeOption(value!);
      },
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
}
