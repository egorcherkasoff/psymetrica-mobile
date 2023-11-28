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
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 3,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
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
          ],
        ),
      ),
    );
  }
}
