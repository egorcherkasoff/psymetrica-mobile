import 'package:flutter/material.dart';

class TestImages extends StatefulWidget {
  const TestImages({super.key});

  @override
  State<TestImages> createState() => _TestImagesState();
}

class _TestImagesState extends State<TestImages> {
  int _currentOption = 0;

  void _changeOption(int value) {
    print('im here');
    setState(() {
      _currentOption = value;
    });
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
            // todo: придумать как сделать здесь..
            ListTile(
              title: Text(
                "Выберите картинку:",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              subtitle: GridView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20),
                children: [
                  Stack(
                    children: [
                      Image.network(
                        "https://img1.akspic.ru/attachments/originals/6/8/3/5/2/125386-risovanie-sovremennoe_iskusstvo-vizualnoe_iskusstvo-graficeskij_dizajn-illustracia-1920x1200.jpg",
                        fit: BoxFit.cover,
                        width: 150,
                        height: 150,
                      ),
                      Positioned(
                        top: -10,
                        right: -20,
                        left: -20,
                        child: RadioListTile(
                          overlayColor:
                              const MaterialStatePropertyAll<Color>(Colors.red),
                          value: 1,
                          groupValue: _currentOption,
                          onChanged: (value) {
                            _changeOption(value!);
                          },
                        ),
                      )
                    ],
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
