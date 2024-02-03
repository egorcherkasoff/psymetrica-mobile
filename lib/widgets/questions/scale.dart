import 'package:flutter/material.dart';

class QuestionScale extends StatefulWidget {
  const QuestionScale({Key? key}) : super(key: key);

  @override
  QuestionScaleState createState() => QuestionScaleState();
}

class QuestionScaleState extends State<QuestionScale> {
  double _range = 0;

  final String _imgUrl = "";

  void _changeSliderValue(double value) {
    setState(() {
      _range = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color(0xffF6F8F9),
          border: Border.all(color: Colors.black12, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _questionText(context),
            _imgUrl != "" ? _questionImage(_imgUrl) : const SizedBox(),
            _questionSlider(context),
          ],
        ),
      ),
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

  Slider _questionSlider(BuildContext context) {
    return Slider(
      min: 0,
      max: 10,
      value: _range,
      label: _range.toString().split('.')[0],
      divisions: 10,
      thumbColor: Theme.of(context).primaryColor,
      activeColor: Theme.of(context).primaryColor,
      inactiveColor: Colors.black12,
      onChanged: (value) {
        _changeSliderValue(value);
      },
    );
  }

  Text _questionText(BuildContext context) {
    return Text(
      "Насколько хорошо вы себя чувствуете?",
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
