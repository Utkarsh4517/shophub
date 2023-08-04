import 'package:flutter/material.dart';
import 'package:shophub/widgets/export_widgets.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(getScreenWidth(context) * 0.04),
        alignment: Alignment.topLeft,
        child: Text(title, style: Theme.of(context).textTheme.displaySmall));
  }
}
