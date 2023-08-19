import 'package:flutter/material.dart';
import 'package:shophub/models/export_models.dart';
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
    return  Scaffold(
      appBar: CustomAppBar(
        title: 'Wishlist',
      ),
      bottomNavigationBar: CustomNavBar(),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(
          horizontal: getScreenWidth(context) * 0.04,
          vertical: getScreenWidth(context) * 0.05,
        ),
        itemCount: Product.products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 1.8,

        ),
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: ProductCard(
              product: Product.products[index],
              widthFactor: 1,
              isWishlist: true,
            ),
          );
        },
      ),
    );
  }
}
