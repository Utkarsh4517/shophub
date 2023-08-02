import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(title),
      centerTitle: true,
      actions: [
        IconButton(onPressed: () {Navigator.pushNamed(context, '/wishlist');}, icon: const Icon(FeatherIcons.heart))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
