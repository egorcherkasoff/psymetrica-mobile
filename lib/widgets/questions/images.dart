import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class QuestionImages extends StatefulWidget {
  const QuestionImages({super.key});

  @override
  State<QuestionImages> createState() => _QuestionImagesState();
}

class _QuestionImagesState extends State<QuestionImages> {
  final List<String> _images = ["23", "23121", "232323"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 1),
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xffF6F8F9),
        ),
        child: Column(
          children: [
            _questionText(context),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _images.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return _questionImage(context, _images[index]);
              },
            ),
          ],
        ),
      ),
    );
  }

  Container _questionImage(BuildContext context, String imageUrl) {
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
        onLongPress: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Картинка отмечена"),
            ),
          );
        },
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
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }

  Text _questionText(BuildContext context) {
    return Text(
      "Какая картинка вам больше нравится?",
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
