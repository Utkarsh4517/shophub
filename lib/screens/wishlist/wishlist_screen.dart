import 'package:flutter/material.dart';
import 'package:shophub/widgets/export_widgets.dart';

class WishliistScreen extends StatelessWidget {
  // defining route name
  static const String routeName = '/wishlist';

  // defing the route() method
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const WishliistScreen(),
    );
  }

  const WishliistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Wishlist',
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
