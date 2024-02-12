import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psymetrica/models/test.dart';
import 'package:psymetrica/widgets/test_card.dart';

/// экран профиля пользователя (по умолч. текущего юзера)
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _userInfo(context),
            const Divider(
              height: 16,
              thickness: 0.4,
            ),
            _userTests(context),
          ],
        ),
      ),
    );
  }

  Column _userTests(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Тесты пользователя",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const TestCard(
          test: Test(
              title: "Тест на дисперсию",
              description:
                  "Этот тест предназначен для тех, кто считает что у него депресия в 0 лет",
              questionsCount: 38,
              author: "Надежда Авангард",
              slug: "test-dispersia",
              createdAt: "2024-01-01",
              id: "test_id1"),
        ),
        const SizedBox(
          height: 15,
        ),
        const TestCard(
          test: Test(
              title: "Тест на дисперсию",
              description:
                  "Этот тест предназначен для тех, кто считает что у него депресия в 0 лет",
              questionsCount: 38,
              author: "Надежда Авангард",
              slug: "test-dispersia",
              createdAt: "2024-01-01",
              id: "test_id1"),
        ),
        const SizedBox(
          height: 15,
        ),
        const TestCard(
          test: Test(
              title: "Тест на дисперсию",
              description:
                  "Этот тест предназначен для тех, кто считает что у него депресия в 0 лет",
              questionsCount: 38,
              author: "Надежда Авангард",
              slug: "test-dispersia",
              createdAt: "2024-01-01",
              id: "test_id1"),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }

  Column _userInfo(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: CachedNetworkImage(
              width: 200,
              height: 200,
              imageUrl:
                  "https://img.goodfon.ru/original/1280x1024/a/4b/3d-geometric-cube.jpg",
              fit: BoxFit.cover,
              placeholder: (context, url) => Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width / 3),
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              errorWidget: (context, url, error) => const Icon(
                CupertinoIcons.exclamationmark_circle,
                color: Colors.red,
              ),
            ),
          ),
        ),
        Text(
          "Надежда Авангард",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const Text("Психолог"),
      ],
    );
  }
}
