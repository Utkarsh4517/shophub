import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:shophub/widgets/export_widgets.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: getScreenheight(context) * 0.06,
      color: Colors.black,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: const Icon(
                FeatherIcons.home,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
              icon: const Icon(
                FeatherIcons.shoppingCart,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/user');
              },
              icon: const Icon(
                FeatherIcons.user,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
