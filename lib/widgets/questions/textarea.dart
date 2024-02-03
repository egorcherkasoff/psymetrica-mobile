import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';

class QuestionTextArea extends StatefulWidget {
  const QuestionTextArea({super.key, this.imgUrl});

  final String? imgUrl;

  @override
  State<QuestionTextArea> createState() => _QuestionTextAreaState();
}

class _QuestionTextAreaState extends State<QuestionTextArea> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color(0xffF6F8F9),
          border: Border.all(color: Colors.black12, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            _questionText(context),
            widget.imgUrl == null
                ? const SizedBox()
                : _questionImage(widget.imgUrl!),
            _textarea(context),
          ],
        ),
      ),
    );
  }

  TextField _textarea(BuildContext context) {
    return TextField(
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      keyboardType: TextInputType.multiline,
      minLines: 3,
      maxLines: 7,
      decoration: const InputDecoration(
        hintText: "Введите ваш ответ тут...",
      ),
    );
  }

  Text _questionText(BuildContext context) {
    return Text(
      "Развернуто ответьте на вопрос: Что значит свэг?",
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16),
    );
  }

  Container _questionImage(String imageUrl) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      height: 250,
      width: double.infinity,
      child: GestureDetector(
        child: Image.network(
          "https://img.goodfon.ru/original/1280x1024/a/4b/3d-geometric-cube.jpg",
          fit: BoxFit.cover,
        ),
        onTap: () {
          showDialog(
            context: context,
            barrierDismissible: true,
            builder: (context) {
              return GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: ExtendedImage.network(
                    "https://img.goodfon.ru/original/1280x1024/a/4b/3d-geometric-cube.jpg",
                    mode: ExtendedImageMode.gesture,
                    initGestureConfigHandler: (state) {
                  return GestureConfig(
                    minScale: 1,
                    animationMinScale: 1,
                    maxScale: 3.0,
                    animationMaxScale: 3,
                    speed: 1.0,
                    inertialSpeed: 100.0,
                    initialScale: 1.0,
                    inPageView: false,
                    initialAlignment: InitialAlignment.center,
                  );
                }),
              );
            },
          );
        },
      ),
    );
  }
}
