import 'package:flutter/material.dart';

enum NotificationTypes {
  testAssigned,
  testUnfinished,
  testApproved,
}

class Notification {
  const Notification(
      {required this.title,
      required this.description,
      required this.type,
      required this.icon});

  final String title;
  final String description;
  final NotificationTypes type;
  final Icon icon;
}
