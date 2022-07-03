import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListScreenHeader extends StatelessWidget {
  const ListScreenHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const FaIcon(FontAwesomeIcons.user),
          iconSize: 20,
        ),
        Text(
          "Lists",
          style: Theme.of(context).textTheme.headline1,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        )
      ],
    );
  }
}
