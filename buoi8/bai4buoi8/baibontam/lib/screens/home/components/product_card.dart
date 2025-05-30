import 'package:baibontam/components/fav_btn.dart';
import 'package:baibontam/components/price.dart';
import 'package:baibontam/models/Product.dart';
import 'package:baibontam/screens/deatils/details_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product, required this.press});

  final Product product;

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        decoration: BoxDecoration(
          color: Color(0xFFF7F7F7),
          borderRadius: const BorderRadius.all(
            Radius.circular(defaultPadding * 1.25),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(tag: product.title!, child: Image.asset(product.image!)),
            Text(
              product.title!,
              style: Theme.of(
                context,
              ).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600),
            ),
            Text("Fruits", style: Theme.of(context).textTheme.bodySmall),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Price(amount: "20.00"), FavBtn()],
            ),
          ],
        ),
      ),
    );
  }
}
