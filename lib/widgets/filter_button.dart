import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 3,
        child: InkWell(
          splashColor: Theme.of(context).primaryColor,
          child: ListTile(
            leading: const Icon(Icons.format_list_bulleted),
            title: Text(
              "Фильтр",
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
