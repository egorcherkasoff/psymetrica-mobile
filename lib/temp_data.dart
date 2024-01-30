import 'package:psymetrica/models/notification.dart' as nfc;
import 'package:flutter/material.dart';
import 'package:psymetrica/models/test.dart';

const List<nfc.Notification> tempNotifications = [
  nfc.Notification(
    title: "Ваш тест успешно прошел проверку модераторами",
    description: "Теперь он доступен всем пользователям",
    type: nfc.NotificationTypes.testAssigned,
    icon: Icon(
      Icons.check,
      size: 36,
      color: Colors.black87,
    ),
  ),
  nfc.Notification(
    title: "Вы начали прохождение теста \"Кто ты из слово пацана\"",
    description: "Вы ответили на 5 вопросов из 8",
    type: nfc.NotificationTypes.testAssigned,
    icon: Icon(
      Icons.book,
      size: 36,
      color: Colors.black87,
    ),
  ),
];

const List<Test> tempTests = [
  Test(
    title: "Кто ты из слова пацана",
    description:
        "Этот тест позволит тебе наконец понять - кто ты из персонажей \"Слова пацана\"",
    questionsCount: 10,
    author: "user_id",
    slug: "kto-tu-iz-slova-pacana",
    createdAt: "2024-01-01",
    id: "test_id",
  ),
  Test(
      title: "Тест на дисперсию",
      description:
          "Этот тест предназначен для тех, кто считает что у него депресия в 0 лет",
      questionsCount: 38,
      author: "user_id1",
      slug: "test-dispersia",
      createdAt: "2024-01-01",
      id: "test_id1"),
];
