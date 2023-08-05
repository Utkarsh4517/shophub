import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:shophub/models/export_models.dart';
import 'package:shophub/widgets/export_widgets.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 10,
          surfaceTintColor: Colors.transparent,
          color: Colors.transparent,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            width: getScreenWidth(context) * 0.3,
            height: getScreenWidth(context) * 0.43,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20).copyWith(
                    bottomLeft: const Radius.circular(0),
                    bottomRight: const Radius.circular(0),
                  ),
                  child: Image.network(
                    Product.products[0].imageUrl,
                    fit: BoxFit.cover,
                    height: getScreenWidth(context) * 0.3,
                    width: getScreenWidth(context) * 0.3,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            Product.products[0].name,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            '${Product.products[0].price}',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FeatherIcons.plusCircle,
                          color: Colors.black,
                          size: getScreenWidth(context) * 0.05,
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}