import 'package:flutter/material.dart';
import 'package:shophub/models/export_models.dart';
import 'package:shophub/widgets/export_widgets.dart';

class ProductScreen extends StatelessWidget {
  // defining route name
  static const String routeName = '/product';

  // defing the route() method
  static Route route({required Product product}) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => ProductScreen(product: product),
    );
  }

  final Product product;
  const ProductScreen({
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: product.name,
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
