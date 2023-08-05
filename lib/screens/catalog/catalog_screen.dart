import 'package:flutter/material.dart';
import 'package:shophub/models/export_models.dart';
import 'package:shophub/widgets/export_widgets.dart';

class CatalogScreen extends StatelessWidget {
  // defining route name
  static const String routeName = '/catalog';

  // defing the route() method
  static Route route({required Category category}) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => CatalogScreen(category: category),
    );
  }

  final Category category;

  const CatalogScreen({
    required this.category,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: category.name,
      ),
      bottomNavigationBar: const CustomNavBar(),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(
          horizontal: getScreenWidth(context) * 0.04,
          vertical: getScreenWidth(context) * 0.05,
        ),
        itemCount: 3,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // childAspectRatio: 1.15,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: ProductCard(
              product: Product.products[index],
            ),
          );
        },
      ),
    );
  }
}
