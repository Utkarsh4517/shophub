import 'package:flutter/material.dart';
import 'package:shophub/widgets/export_widgets.dart';

class CartScreen extends StatelessWidget {
  // defining route name
  static const String routeName = '/cart';

  // defing the route() method
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const CartScreen(),
    );
  }

  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Cart',
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
