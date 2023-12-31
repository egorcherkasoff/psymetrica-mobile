import "package:flutter/material.dart";
import "package:psymetrica/widgets/filter_button.dart";
import "package:psymetrica/widgets/test_card.dart";
import 'package:psymetrica/temp_data.dart';

class TestsScreen extends StatefulWidget {
  const TestsScreen({super.key});

  @override
  State<TestsScreen> createState() => _TestsScreenState();
}

class _TestsScreenState extends State<TestsScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: tempTests.length,
                itemBuilder: (context, index) {
                  return TestCard(test: tempTests[index]);
                },
              ),
            ],
          ),
        ),
        const Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: FilterButton(),
        ),
      ],
    );
  }
}
