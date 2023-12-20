import 'package:flutter/material.dart';

class TestChecks extends StatefulWidget {
  const TestChecks({super.key});

  @override
  State<TestChecks> createState() => _TestChecksState();
}

class _TestChecksState extends State<TestChecks> {
  final List<String> _testChecks = [];

  void _onCheck(String option) {
    _testChecks.contains(option)
        ? _testChecks.remove(option)
        : _testChecks.add(option);
    print(_testChecks);
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
            style: Theme.of(context).textTheme.displayMedium,
          ),
          subtitle: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CheckboxListTile(
                value: _testChecks.contains("option1") ? true : false,
                onChanged: (value) {
                  setState(
                    () {
                      _onCheck("option1");
                    },
                  );
                },
                title: const Text("Красный"),
              ),
              CheckboxListTile(
                value: _testChecks.contains("option2") ? true : false,
                onChanged: (value) {
                  setState(
                    () {
                      _onCheck("option2");
                    },
                  );
                },
                title: const Text("Синий"),
              ),
              CheckboxListTile(
                value: _testChecks.contains("option3") ? true : false,
                onChanged: (value) {
                  setState(
                    () {
                      _onCheck("option3");
                    },
                  );
                },
                title: const Text("Зелёный"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
