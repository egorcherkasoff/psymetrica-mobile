import 'package:flutter/material.dart';

class TestScale extends StatefulWidget {
  const TestScale({Key? key}) : super(key: key);

  @override
  Test_ScaleState createState() => Test_ScaleState();
}

class Test_ScaleState extends State<TestScale> {
  double _range = 1;

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
            style: Theme.of(context).textTheme.displayMedium,
          ),
          subtitle: Slider(
            min: 1,
            max: 10,
            value: _range,
            label: _range.toString().split('.')[0],
            divisions: 9,
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
