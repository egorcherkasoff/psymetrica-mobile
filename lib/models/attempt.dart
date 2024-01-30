import 'package:psymetrica/models/test.dart';
import 'package:psymetrica/models/user.dart';

class Attempt {
  const Attempt({
    required this.id,
    required this.test,
    required this.user,
    required this.startedAt,
    required this.isFinished,
    this.finishedAt,
    required this.answers,
  });

  final String id;
  final Test test;
  final User user;
  final String startedAt;
  final bool isFinished;
  final String? finishedAt;
  final List<AttemptAnswer?> answers;
}

class AttemptAnswer {
  const AttemptAnswer({
    required this.id,
    required this.option,
    required this.answer,
    required this.score,
  });

  final String id;
  final String option;
  final String answer;
  final int score;
  // final Scale scale;
}
