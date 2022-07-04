import 'package:buyzer/components/card_wrapper.dart';
import 'package:buyzer/components/list_item.dart';
import 'package:buyzer/header.dart';
import 'package:buyzer/list_item.dart';
import 'package:buyzer/repository/lists_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'components/list_screen/listscreen_header.dart';
import 'items_screen.dart';

class ListsScreen extends StatelessWidget {
  ListsScreen({Key? key}) : super(key: key);

  final lists = ListsRepository().lists;

  @override
  Widget build(BuildContext context) {
    return CardWrapper(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      padding: const EdgeInsets.symmetric(vertical: 24),
      margin: EdgeInsets.zero,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
              padding: EdgeInsets.only(left: 12, right: 12, bottom: 12),
              child: ListScreenHeader(),
          ),
          const Divider(
            height: 1,
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: lists.length,
              itemBuilder: (context, index) {
                final list = lists[index];
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
                      child: ItemWidget(
                        name: list.name,
                        color: list.color,
                        subtitle: list.items.join(", "),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return ItemsScreenRoute(
                                color: list.color,
                                name: list.name,
                              );
                            }),
                          );
                        },
                      ),
                    ),
                    const Divider(
                      height: 1,
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
