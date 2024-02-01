import 'package:flutter/material.dart';
import 'package:psymetrica/screens/enter_details.dart';
import 'package:psymetrica/screens/tabs.dart';

class OfferDetailsScreen extends StatefulWidget {
  const OfferDetailsScreen({super.key});

  @override
  State<OfferDetailsScreen> createState() => _OfferDetailsScreenState();
}

// на этом экране предлагается добавить личные данные (ФИО, аватар)
class _OfferDetailsScreenState extends State<OfferDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: _offer(context),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _offerButtons(context),
            ],
          ),
        ],
      ),
    );
  }

  Container _offerButtons(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black12,
          width: 1,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _agreeButton(context),
          _rejectButton(context),
        ],
      ),
    );
  }

  SizedBox _rejectButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const TabsScreen();
              },
            ),
          );
        },
        style: Theme.of(context).outlinedButtonTheme.style,
        child: const Text(
          "Позже",
        ),
      ),
    );
  }

  SizedBox _agreeButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const EnterDetailsScreen();
              },
            ),
          );
        },
        style: Theme.of(context).elevatedButtonTheme.style,
        child: const Text("Заполнить"),
      ),
    );
  }

  Column _offer(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Заполните свой профиль",
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Оформите свой профиль. Пожалуйста, добавьте аватар и укажите ваше полное имя.",
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
