import 'package:flutter/material.dart';

class QuestionTextArea extends StatefulWidget {
  const QuestionTextArea({super.key, this.imgUrl});

  final String? imgUrl;

  @override
  State<QuestionTextArea> createState() => _QuestionTextAreaState();
}

class _QuestionTextAreaState extends State<QuestionTextArea> {
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
          trailing:
              widget.imgUrl == null ? null : Icon(Icons.baby_changing_station),
          title: Text(
            "Развернуто ответьте на вопрос: Что значит свэг?",
            style:
                Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16),
          ),
          subtitle: TextField(
            onTapOutside: (event) {
              FocusScope.of(context).unfocus();
            },
            keyboardType: TextInputType.multiline,
            minLines: 1,
            maxLines: 7,
            decoration: InputDecoration(
              label: Text("Введите ваш ответ тут...",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.black54, fontSize: 16)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            ),
          ),
        ),
      ),
    );
  }
}
