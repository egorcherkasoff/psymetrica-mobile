import 'package:flutter/material.dart';

class QuestionRadios extends StatefulWidget {
  const QuestionRadios({super.key});

  @override
  State<QuestionRadios> createState() => _QuestionRadiosState();
}

class _QuestionRadiosState extends State<QuestionRadios> {
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
            style:
                Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16),
          ),
          subtitle: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RadioListTile(
                title: Text(
                  "Превосходно",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 14),
                ),
                value: 1,
                groupValue: _currentOption,
                onChanged: (value) {
                  _changeOption(value!);
                },
              ),
              RadioListTile(
                title: Text(
                  "Нормально",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 14),
                ),
                value: 2,
                groupValue: _currentOption,
                onChanged: (value) {
                  _changeOption(value!);
                },
              ),
              RadioListTile(
                title: Text(
                  "Ужасно :(",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 14),
                ),
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
