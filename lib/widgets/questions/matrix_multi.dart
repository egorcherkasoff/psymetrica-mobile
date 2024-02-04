import 'package:flutter/material.dart';

class QuestionMatrixMulti extends StatefulWidget {
  const QuestionMatrixMulti({Key? key}) : super(key: key);

  @override
  State<QuestionMatrixMulti> createState() => _QuestionMatrixMultiState();
}

class _QuestionMatrixMultiState extends State<QuestionMatrixMulti> {
  final List<String> _questionChecks = [];

  void _onCheck(String option) {
    _questionChecks.contains(option)
        ? _questionChecks.remove(option)
        : _questionChecks.add(option);
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
      border: TableBorder.all(
        color: Colors.black12,
        width: 1,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      children: [
        _matrixAnswers(),
        _matrixTile(context, "option1"),
        _matrixTile(context, "option12"),
        _matrixTile(context, "option13"),
      ],
    );
  }

  TableRow _matrixTile(BuildContext context, String checkValue) {
    return TableRow(
      children: [
        const Text("Вопрос1"),
        CheckboxListTile(
          value: _questionChecks.contains(checkValue) ? true : false,
          onChanged: (value) {
            setState(() {
              _onCheck(checkValue);
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: Theme.of(context).primaryColor,
        ),
        CheckboxListTile(
          value: _questionChecks.contains("asd") ? true : false,
          onChanged: (value) {},
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: Theme.of(context).primaryColor,
        ),
        CheckboxListTile(
          value: _questionChecks.contains("23423") ? true : false,
          onChanged: (value) {},
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: Theme.of(context).primaryColor,
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
