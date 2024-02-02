import "package:flutter/material.dart";
import "package:psymetrica/widgets/test_card.dart";
import 'package:psymetrica/temp_data.dart';

class TestsScreen extends StatefulWidget {
  const TestsScreen({super.key});

  @override
  State<TestsScreen> createState() => _TestsScreenState();
}

class _TestsScreenState extends State<TestsScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleFilterController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _authorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        _testsList(),
        _filterButton(),
      ],
    );
  }

  void _showModal(BuildContext context) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      context: context,
      builder: (context) {
        return SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: _titleFilterController,
                        validator: (value) {
                          return null;
                        },
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          hintText: "Название теста",
                        ),
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: _descriptionController,
                        validator: (value) {
                          return null;
                        },
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          hintText: "Описание теста",
                        ),
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 16,
                            ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: _authorController,
                        validator: (value) {
                          return null;
                        },
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          hintText: "Автор теста",
                        ),
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 16,
                            ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      _applyFilterButton(context),
                      _resetFilterButton(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  SizedBox _resetFilterButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text("Сброс фильтров"),
      ),
    );
  }

  SizedBox _applyFilterButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text("Применить фильтры"),
      ),
    );
  }

  Positioned _filterButton() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () => _showModal(context),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.filter_list),
                SizedBox(
                  width: 5,
                ),
                Text("Фильтр"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SingleChildScrollView _testsList() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          const SizedBox(
            height: 62,
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: tempTests.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: TestCard(test: tempTests[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}
