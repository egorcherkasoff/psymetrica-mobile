import 'package:flutter/material.dart';

class QuestionMatrixSingle extends StatefulWidget {
  const QuestionMatrixSingle({Key? key}) : super(key: key);

  @override
  State<QuestionMatrixSingle> createState() => _QuestionMatrixSingleState();
}

class _QuestionMatrixSingleState extends State<QuestionMatrixSingle> {
  final List<int> _currentOption = [0, 0, 0, 0];

  void _changeOption(int option, int idx) {
    setState(
      () {
        _currentOption[idx] = option;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 1),
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xffF6F8F9),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _questionText(context),
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: _singleMatrix(context),
            ),
          ],
        ),
      ),
    );
  }

  Table _singleMatrix(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      border: TableBorder.all(
        color: Colors.black12,
        width: 1,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      children: [
        _matrixAnswers(),
        _matrixTile(context, 1),
        _matrixTile(context, 2),
        _matrixTile(context, 3),
      ],
    );
  }

  TableRow _matrixTile(BuildContext context, int radioValue) {
    return TableRow(
      children: [
        const Center(
          child: Text("Вопрос1"),
        ),
        RadioListTile(
          value: radioValue,
          activeColor: Theme.of(context).primaryColor,
          groupValue: _currentOption[0],
          onChanged: (value) {
            _changeOption(radioValue, 0);
          },
        ),
        RadioListTile(
          value: 1,
          activeColor: Theme.of(context).primaryColor,
          groupValue: _currentOption,
          onChanged: (value) {},
        ),
        RadioListTile(
          value: 1,
          activeColor: Theme.of(context).primaryColor,
          groupValue: _currentOption,
          onChanged: (value) {},
        ),
      ],
    );
  }

  TableRow _matrixAnswers() {
    return TableRow(
      children: [
        _matrixHeaderCell(),
        _matrixHeaderCell(
          const Text(
            "Ответ1",
            textAlign: TextAlign.center,
          ),
        ),
        _matrixHeaderCell(
          const Text(
            "Ответ2",
            textAlign: TextAlign.center,
          ),
        ),
        _matrixHeaderCell(
          const Text(
            "Ответ3",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  SizedBox _matrixHeaderCell([Widget? child]) {
    return SizedBox(
      height: 50,
      child: Center(
        child: child ?? Container(),
      ),
    );
  }

  Text _questionText(BuildContext context) {
    return Text(
      "Выберите 1 вариант ответа в каждой строке",
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
