import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:psymetrica/screens/tabs.dart';

/// экран для заполнения пользователем данных о себе
class EnterDetailsScreen extends StatefulWidget {
  const EnterDetailsScreen({super.key});

  @override
  State<EnterDetailsScreen> createState() => _EnterDetailsScreenState();
}

class _EnterDetailsScreenState extends State<EnterDetailsScreen> {
  final _formKey = GlobalKey<FormState>();
  final String _currentImage = "";
  // ignore: avoid_init_to_null
  late XFile? _pickedImage = null;

  ///Выбор изображения из галереи
  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? file = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _pickedImage = file;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Заполните данные о себе",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 8,
                ),
                _detailsForm(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Form _detailsForm(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _avatarPicker(context),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              hintText: "Введите ваше имя",
            ),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              hintText: "Введите вашу фамилию",
            ),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              hintText: "Введите ваше отчество",
            ),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                  builder: (context) {
                    return const TabsScreen();
                  },
                ), (route) => false);
              },
              style: Theme.of(context).elevatedButtonTheme.style,
              child: const Text(
                "Готово",
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _avatarPicker(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.all(8),
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        splashColor: Theme.of(context).primaryColor,
        onTap: _pickImage,
        //если есть картинка у юзера - рендер её, при нажатии загрузка. иначе показать выбор сразу
        child: _pickedImage != null
            ? Image.file(
                File(_pickedImage!.path),
                fit: BoxFit.cover,
              )
            : _currentImage != ""
                ? CachedNetworkImage(
                    imageUrl: _currentImage,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Padding(
                      padding:
                          EdgeInsets.all(MediaQuery.of(context).size.width / 3),
                      child: CircularProgressIndicator(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    errorWidget: (context, url, error) => const Icon(
                      CupertinoIcons.exclamationmark_circle,
                      color: Colors.red,
                    ),
                  )
                : ElevatedButton(
                    onPressed: () {
                      _pickImage();
                    },
                    child: const Text("Выберите изображение"),
                  ),
      ),
    );
  }
}
