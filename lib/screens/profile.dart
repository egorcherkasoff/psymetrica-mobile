import 'package:flutter/material.dart';
import 'package:psymetrica/models/test.dart';
import 'package:psymetrica/models/user.dart';
import 'package:psymetrica/widgets/test_card.dart';
import 'package:cached_network_image/cached_network_image.dart';

// экран профиля пользователя (по умолч. текущего юзера)
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 128,
                  height: 128,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl:
                        "https://mykaleidoscope.ru/x/uploads/posts/2022-09/1663657927_50-mykaleidoscope-ru-p-uspeshnii-psikholog-pinterest-56.jpg",
                    placeholder: (context, url) => const SizedBox(
                        width: 40,
                        height: 40,
                        child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                Text("Зыкова Надежда Николаевна",
                    style: Theme.of(context).textTheme.bodyMedium),
                Text(
                  "Психолог",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Ваши тесты",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const TestCard(
                  test: Test(
                    title: "Кто ты из слова пацана",
                    description:
                        "Этот тест позволит тебе наконец понять - кто ты из персонажей \"Слова пацана\"",
                    questionsCount: 10,
                    author: User(id: "asdada", fullName: "Надежда Авангард"),
                    slug: "kto-tu-iz-slova-pacana",
                    createdAt: "2024-01-01",
                    id: "test_id",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
