import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class AppSwipeActionsWidget extends StatelessWidget {
  final Widget child;
  final SlidableActionCallback? onEdit;
  final SlidableActionCallback? onDelete;

  const AppSwipeActionsWidget(
      {Key? key, required this.child, this.onDelete, this.onEdit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const DrawerMotion(),
        extentRatio: 0.4,
        dragDismissible: false,
        children: [
          SlidableAction(
            onPressed: onEdit,
            backgroundColor: const Color(0xFF39afd1),
            foregroundColor: Colors.white,
            icon: Icons.edit_outlined,
            spacing: 0,
            padding: EdgeInsets.zero,
          ),
          SlidableAction(
            onPressed: onDelete,
            backgroundColor: const Color(0xFFe63757),
            foregroundColor: Colors.white,
            icon: Icons.delete_outlined,
            spacing: 0,
            padding: EdgeInsets.zero,
          ),
        ],
      ),
      child: child,
    );
  }
}
