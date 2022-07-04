import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final String name;
  final Color color;
  final String? subtitle;
  final void Function()? onTap;

  const ItemWidget({
    Key? key,
    required this.name,
    required this.color,
    this.subtitle,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 55),
        child: IntrinsicHeight(
          child: Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(6),
                  bottomRight: Radius.circular(6),
                ),
                child: Container(width: 4, color: color),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 12, 12, 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        name,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      if (subtitle != null && subtitle?.isNotEmpty == true)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: Text(
                            subtitle!,
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
      ),
    );
  }
}
