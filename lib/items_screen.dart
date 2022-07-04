import 'package:buyzer/components/list_item.dart';
import 'package:buyzer/list_item.dart';
import 'package:buyzer/repository/items_reporitory.dart';
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
  ItemsScreen({Key? key, required this.color, required this.name})
      : super(key: key);
  final Color color;
  final String name;
  final items = ItemsRepository().items;

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
        Container(
          color: widget.color,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24)
                .add(MediaQuery.of(context).viewPadding),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      alignment: Alignment.topLeft,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.arrowLeft,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          alignment: Alignment.topRight,
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.plus,
                            color: Colors.white,
                            size: 22,
                          ),
                        ),
                        IconButton(
                          alignment: Alignment.topRight,
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.sun,
                            color: Colors.white,
                            size: 22,
                          ),
                        ),
                        IconButton(
                          alignment: Alignment.topRight,
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.userGroup,
                            color: Colors.white,
                            size: 22,
                          ),
                        ),
                        IconButton(
                          alignment: Alignment.topRight,
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.boltLightning,
                            color: Colors.white,
                            size: 22,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 61, bottom: 96),
                  child: Text(
                    widget.name,
                    style: Theme.of(context).textTheme.displayLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  children: [
                    const FaIcon(
                      FontAwesomeIcons.clock,
                      color: Colors.white,
                      size: 13,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      " Updated 16 minutes ago by Me ",
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          ?.copyWith(color: Colors.white),
                    )
                  ],
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
            itemCount: widget.items.length,
            itemBuilder: (context, index) {
              final item = widget.items[index];
              return Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ItemWidget(
                          name: item.name,
                          color: item.color,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: FaIcon(
                          FontAwesomeIcons.boltLightning,
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
