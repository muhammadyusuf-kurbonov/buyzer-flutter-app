import 'dart:math' as math;

import 'package:buyzer/header.dart';
import 'package:buyzer/list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ListsScreen extends StatelessWidget {
  const ListsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          maxWidth: 1256, maxHeight: MediaQuery.of(context).size.height),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        margin: const EdgeInsets.symmetric(vertical: 16),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              const Padding(
                  padding: EdgeInsets.fromLTRB(16, 4, 16, 16), child: Header()),
              const Divider(
                height: 1,
              ),
              Expanded(
                  child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: 25,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Slidable(
                              endActionPane: ActionPane(
                                  motion: const DrawerMotion(),
                                  extentRatio: 0.4,
                                  dragDismissible: false,
                                  children: [
                                    SlidableAction(
                                      onPressed: (context) {},
                                      backgroundColor: const Color(0xFF39afd1),
                                      foregroundColor: Colors.white,
                                      icon: Icons.edit_outlined,
                                      spacing: 0,
                                      padding: EdgeInsets.zero,
                                    ),
                                    SlidableAction(
                                      onPressed: (context) {},
                                      backgroundColor: const Color(0xFFe63757),
                                      foregroundColor: Colors.white,
                                      icon: Icons.delete_outlined,
                                      spacing: 0,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ]),
                              child: ListItem(
                                  name: "Shop list $index",
                                  color: Color((math.Random().nextDouble() *
                                              0xFFFFFF)
                                          .toInt())
                                      .withOpacity(1.0),
                                  subtitle: "Onions, Poptatos, Tomatos, " *
                                      math.Random().nextInt(15)),
                            ),
                            const Divider(
                              height: 1,
                            ),
                          ],
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
