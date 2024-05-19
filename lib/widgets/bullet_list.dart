import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class BulletList extends StatelessWidget {
  const BulletList(this.texts, {super.key});
  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: texts
          .map((text) => BulletListItem(text))
          .expand((widget) => [widget, const SizedBox(height: 5.0)])
          .toList(),
    );
  }
}

class BulletListItem extends StatelessWidget {
  const BulletListItem(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Bullet character
        Container(
          margin: const EdgeInsets.only(right: 8.0),
          child: const Text(" -"),
        ),
        Expanded(
          child: Text(
            text,
            style: context.textTheme.bodyLarge
                ?.copyWith(color: const Color(0xff717171)),
          ),
        ),
      ],
    );
  }
}
