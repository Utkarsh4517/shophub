import 'package:flutter/material.dart';
import 'package:shophub/widgets/export_widgets.dart';

class CatalogScreen extends StatelessWidget {
  // defining route name
  static const String routeName = '/catalog';

  // defing the route() method
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const CatalogScreen(),
    );
  }

  const CatalogScreen({super.key});

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
