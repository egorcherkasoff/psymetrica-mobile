import 'package:flutter/material.dart';
import 'package:psymetrica/models/test.dart';
import 'package:psymetrica/screens/home.dart';
import 'package:psymetrica/screens/test.dart';
import 'package:psymetrica/screens/test_start.dart';

class TestCard extends StatelessWidget {
  const TestCard({
    super.key,
    required this.test,
  });

  final Test test;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black12, width: 1),
            borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          title: Text(
            test.title,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: 18, color: Colors.black),
          ),
          subtitle: Text(
            test.description,
            style:
                Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16),
          ),
          trailing: IconButton(
            padding: EdgeInsets.zero,
            iconSize: 36,
            splashColor: Theme.of(context).primaryColor,
            icon: const Icon(
              Icons.chevron_right_rounded,
            ),
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
          ),
        ),
      ),
    );
  }
}
