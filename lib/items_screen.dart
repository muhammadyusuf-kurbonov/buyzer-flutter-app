import 'dart:math' as math;

import 'package:buyzer/list_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemsScreenRoute extends StatelessWidget {
  final Color color;
  final String name;

  const ItemsScreenRoute({Key? key, required this.color, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ItemsScreen(
        color: color,
        name: name,
      ),
    );
  }
}

class ItemsScreen extends StatefulWidget {
  const ItemsScreen({Key? key, required this.color, required this.name})
      : super(key: key);
  final Color color;
  final String name;

  @override
  State<StatefulWidget> createState() {
    return ItemScreenState();
  }
}

class ItemScreenState extends State<ItemsScreen> {
  bool lightningEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 12, top: 12, bottom: 12),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
              ),
              Expanded(
                child: Text(
                  widget.name,
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.apply(color: widget.color),
                  textAlign: TextAlign.center,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.userGroup),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFFd2ddec), width: 1.0),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFFd2ddec), width: 1.0),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFFd2ddec), width: 1.0),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        hintText: 'Egg, 2 packs',
                        hintStyle: Theme.of(context).textTheme.bodyText1?.apply(
                              color: const Color(0xFFd2ddec),
                            ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 4)),
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      primary: Colors.black, //change colour here
                      padding: EdgeInsets.zero,
                      fixedSize: const Size(28, 28)),
                  child: Icon(
                    Icons.bolt_outlined,
                    color: Colors.yellowAccent[700],
                    size: 22,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ListItem(
                          name: "Item $index",
                          color: Color((math.Random().nextDouble() * 0xFFFFFF)
                                  .toInt())
                              .withOpacity(1.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Icon(
                          Icons.bolt_outlined,
                          color: Colors.yellow[700],
                          size: 22,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 1,
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
