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
            "Когда я один я чувствую себя уверенно",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          subtitle: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RadioListTile(
                title: const Text("Превосходно"),
                value: 1,
                groupValue: _currentOption,
                onChanged: (value) {
                  _changeOption(value!);
                },
              ),
              RadioListTile(
                title: const Text("Нормально"),
                value: 2,
                groupValue: _currentOption,
                onChanged: (value) {
                  _changeOption(value!);
                },
              ),
              RadioListTile(
                title: const Text("Ужасно :("),
                value: 3,
                groupValue: _currentOption,
                onChanged: (value) {
                  _changeOption(value!);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
