import 'package:flutter/material.dart';
import 'package:shophub/widgets/export_widgets.dart';

class ProductScreen extends StatelessWidget {
  // defining route name
  static const String routeName = '/product';

  // defing the route() method
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const ProductScreen(),
    );
  }

  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Product',
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
