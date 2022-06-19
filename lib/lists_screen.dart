import 'package:buyzer/list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListsScreen extends StatelessWidget {
  const ListsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1256),
          child: Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            margin: const EdgeInsets.all(32),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const FaIcon(FontAwesomeIcons.user)),
                          Text(
                            "Lists",
                            style: Theme.of(context).typography.dense.headline4,
                          ),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.add))
                        ],
                      )),
                  const Divider(),
                  Slidable(
                    endActionPane: ActionPane(
                        motion: const DrawerMotion(),
                        extentRatio: 0.2,
                        dragDismissible: false,
                        children: [
                          SlidableAction(
                            flex: 1,
                            onPressed: (context) {},
                            backgroundColor: const Color(0xFF39afd1),
                            foregroundColor: Colors.white,
                            icon: Icons.edit_outlined,
                            spacing: 0,
                            padding: EdgeInsets.zero,
                          ),
                          SlidableAction(
                            flex: 1,
                            onPressed: (context) {},
                            backgroundColor: const Color(0xFFe63757),
                            foregroundColor: Colors.white,
                            icon: Icons.delete_outlined,
                            spacing: 0,
                            padding: EdgeInsets.zero,
                          ),
                        ]),
                    child: const ListItem(
                        name: "Shop list 1", color: Colors.green),
                  ),
                  const Divider(),
                  Slidable(
                    endActionPane: ActionPane(
                        motion: const DrawerMotion(),
                        extentRatio: 0.2,
                        dragDismissible: false,
                        children: [
                          SlidableAction(
                            flex: 1,
                            onPressed: (context) {},
                            backgroundColor: const Color(0xFF39afd1),
                            foregroundColor: Colors.white,
                            icon: Icons.edit_outlined,
                            spacing: 0,
                            padding: EdgeInsets.zero,
                          ),
                          SlidableAction(
                            flex: 1,
                            onPressed: (context) {},
                            backgroundColor: const Color(0xFFe63757),
                            foregroundColor: Colors.white,
                            icon: Icons.delete_outlined,
                            spacing: 0,
                            padding: EdgeInsets.zero,
                          ),
                        ]),
                    child: const ListItem(
                        name: "Shop list 2", color: Colors.orange, subtitle: "Onions, Poptatos, Tomatos"),
                  ),
                  const Divider(),
                  Slidable(
                    endActionPane: ActionPane(
                        motion: const DrawerMotion(),
                        extentRatio: 0.2,
                        dragDismissible: false,
                        children: [
                          SlidableAction(
                            flex: 1,
                            onPressed: (context) {},
                            backgroundColor: const Color(0xFF39afd1),
                            foregroundColor: Colors.white,
                            icon: Icons.edit_outlined,
                            spacing: 0,
                            padding: EdgeInsets.zero,
                          ),
                          SlidableAction(
                            flex: 1,
                            onPressed: (context) {},
                            backgroundColor: const Color(0xFFe63757),
                            foregroundColor: Colors.white,
                            icon: Icons.delete_outlined,
                            spacing: 0,
                            padding: EdgeInsets.zero,
                          ),
                        ]),
                    child: const ListItem(
                        name: "Shop list 3", color: Colors.red),
                  ),
                  const Divider(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
