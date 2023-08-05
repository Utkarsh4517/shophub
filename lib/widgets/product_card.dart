import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:shophub/models/export_models.dart';
import 'package:shophub/widgets/export_widgets.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final double widthFactor;
  const ProductCard({
    this.widthFactor = 0.32,
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/product',
          arguments: product,
        );
      },
      child: Stack(
        children: [
          Card(
            elevation: 10,
            surfaceTintColor: Colors.transparent,
            color: Colors.transparent,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              width: getScreenWidth(context) * widthFactor,
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
                      product.imageUrl,
                      fit: BoxFit.cover,
                      height: getScreenWidth(context) * 0.3,
                      width: getScreenWidth(context) * widthFactor,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              product.name,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              '${product.price}',
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
      ),
    );
  }
}
