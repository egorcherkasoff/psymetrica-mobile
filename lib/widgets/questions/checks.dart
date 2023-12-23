import 'package:flutter/material.dart';

class QuestionChecks extends StatefulWidget {
  const QuestionChecks({super.key});

  @override
  State<QuestionChecks> createState() => _QuestionChecksState();
}

class _QuestionChecksState extends State<QuestionChecks> {
  final List<String> _questionChecks = [];

  void _onCheck(String option) {
    _questionChecks.contains(option)
        ? _questionChecks.remove(option)
        : _questionChecks.add(option);
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
            "Выберите Ваши любимые цвета",
            style:
                Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16),
          ),
          subtitle: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CheckboxListTile(
                value: _questionChecks.contains("option1") ? true : false,
                onChanged: (value) {
                  setState(
                    () {
                      _onCheck("option1");
                    },
                  );
                },
                title: Text(
                  "Красный",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 14),
                ),
              ),
              CheckboxListTile(
                value: _questionChecks.contains("option2") ? true : false,
                onChanged: (value) {
                  setState(
                    () {
                      _onCheck("option2");
                    },
                  );
                },
                title: Text(
                  "Синий",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 14),
                ),
              ),
              CheckboxListTile(
                value: _questionChecks.contains("option3") ? true : false,
                onChanged: (value) {
                  setState(
                    () {
                      _onCheck("option3");
                    },
                  );
                },
                title: Text(
                  "Зелёный",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
