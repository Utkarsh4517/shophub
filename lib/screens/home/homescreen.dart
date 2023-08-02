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
      body: CarouselSlider(
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
    );
  }
}

class HeroCorouselCard extends StatelessWidget {
  final Category category;
  const HeroCorouselCard({
    required this.category,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(
                category.imageUrl,
                fit: BoxFit.cover,
                width: 1000.0,
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    category.name,
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
