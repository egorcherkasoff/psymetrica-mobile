import 'package:flutter/material.dart';

class TestRadios extends StatefulWidget {
  const TestRadios({super.key});

  @override
  State<TestRadios> createState() => _TestRadiosState();
}

class _TestRadiosState extends State<TestRadios> {
  int _currentOption = 0;

  void _changeOption(int option) {
    setState(() {
      _currentOption = option;
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
                "Когда я один я чувствую себя уверенно",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              subtitle: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RadioListTile(
                    title: Text("Превосходно"),
                    value: 1,
                    groupValue: _currentOption,
                    onChanged: (value) {
                      _changeOption(value!);
                    },
                  ),
                  RadioListTile(
                    title: Text("Нормально"),
                    value: 2,
                    groupValue: _currentOption,
                    onChanged: (value) {
                      _changeOption(value!);
                    },
                  ),
                  RadioListTile(
                    title: Text("Ужасно :("),
                    value: 3,
                    groupValue: _currentOption,
                    onChanged: (value) {
                      _changeOption(value!);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
