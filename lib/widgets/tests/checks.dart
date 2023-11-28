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
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 3,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
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
          ],
        ),
      ),
    );
  }
}
