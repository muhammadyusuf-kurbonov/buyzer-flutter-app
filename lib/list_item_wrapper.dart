import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'list_item.dart';

class ListItemWrapper extends StatelessWidget {
  const ListItemWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    throw Slidable(
          endActionPane: ActionPane(
          motion: const DrawerMotion(),
          extentRatio: 0.4,
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
      child: const ListItem(name: "Shop list 1", color: Colors.green),
    );
  }
}
