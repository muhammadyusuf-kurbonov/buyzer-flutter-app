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
    return InkWell(
      child: IntrinsicHeight(
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(6), bottomRight: Radius.circular(6)),
              child: Container(width: 4, color: widget.color),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      widget.name,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    if (widget.subtitle != null)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Text(
                          widget.subtitle!,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(color: const Color(0xFFa5b7d1)),
                        ),
                      ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
