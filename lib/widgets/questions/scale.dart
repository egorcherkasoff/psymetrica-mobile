import 'package:flutter/material.dart';

class QuestionScale extends StatefulWidget {
  const QuestionScale({Key? key}) : super(key: key);

  @override
  QuestionScaleState createState() => QuestionScaleState();
}

class QuestionScaleState extends State<QuestionScale> {
  double _range = 0;

  void _changeSliderValue(double value) {
    setState(() {
      _range = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          title: Text(
            "Насколько хорошо вы себя чувствуете?",
            style:
                Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16),
          ),
          subtitle: Slider(
            min: 0,
            max: 10,
            value: _range,
            label: _range.toString().split('.')[0],
            divisions: 10,
            thumbColor: Theme.of(context).primaryColor,
            onChanged: (value) {
              _changeSliderValue(value);
            },
          ),
        ),
      ),
    );
  }
}
