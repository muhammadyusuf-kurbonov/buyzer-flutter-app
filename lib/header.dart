import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.user),
            iconSize: 20),
        Text(
          "Lists",
          style: Theme.of(context).textTheme.headline4,
        ),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.add))
      ],
    );
  }

}