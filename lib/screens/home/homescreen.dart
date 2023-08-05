import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shophub/models/export_models.dart';
import 'package:shophub/widgets/export_widgets.dart';

class HomePage extends StatelessWidget {
  // defining route name
  static const String routeName = '/';

  // defing the route() method
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const HomePage(),
    );
  }

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Shophub',
      ),
      bottomNavigationBar: const CustomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 1.8,
                  enlargeCenterPage: true,
                  viewportFraction: 0.9,
                  enlargeStrategy: CenterPageEnlargeStrategy.height),
              items: Category.categories
                  .map((category) => HeroCorouselCard(category: category))
                  .toList(),
            ),
            const SectionTitle(title: 'Recommended'),
            ProductCarousel(
              products: (Product.products
                  .where((product) => product.isRecommended)
                  .toList()),
            ),
            const SectionTitle(title: 'Most Popular'),
            ProductCarousel(
              products: (Product.products
                  .where((product) => product.isPopular)
                  .toList()),
            )
          ],
        ),
      ),
    );
  }
}
