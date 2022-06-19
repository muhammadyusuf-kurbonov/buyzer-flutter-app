import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  final String name;
  final Color color;
  final String? subtitle;

  const ListItem(
      {Key? key, required this.name, required this.color, this.subtitle})
      : super(key: key);

  @override
  ListItemState createState() {
    return ListItemState();
  }
}

class ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(left: BorderSide(color: widget.color, width: 4.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              widget.name,
              style: Theme.of(context).typography.dense.headline6,
            ),
            if (widget.subtitle != null)
              Text(widget.subtitle!,
                  style: Theme.of(context)
                      .typography
                      .dense
                      .subtitle1
                      ?.copyWith(color: Colors.black.withOpacity(0.5))),
          ],
        ),
      ),
    );
  }
}
