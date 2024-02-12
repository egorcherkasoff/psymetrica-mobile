import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psymetrica/models/test.dart';
import 'package:psymetrica/screens/test_start.dart';

class TestCard extends StatelessWidget {
  const TestCard({
    super.key,
    required this.test,
  });

  final Test test;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: const Color(0xffF6F8F9),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xffD5DCE2), width: .5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            _cardContent(context),
            const VerticalDivider(),
            _cardActions(context)
          ],
        ),
      ),
    );
  }

  Expanded _cardActions(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return TestStart(
                      test: test,
                    );
                  },
                ),
              );
            },
            icon: const Icon(CupertinoIcons.chevron_right),
            style: Theme.of(context).iconButtonTheme.style,
          )
        ],
      ),
    );
  }

  Expanded _cardContent(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            test.title,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            "Автор: ${test.author}",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Text(
            "Рейтинг: 8/10.\nПрохождений: 40",
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
