import 'package:baibontam/constants.dart';
import 'package:baibontam/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'cart_detailsview_card.dart';

class CartDetailsView extends StatelessWidget {
  const CartDetailsView({super.key, required this.controller});

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Cart", style: Theme.of(context).textTheme.headlineMedium),
          ...List.generate(
            controller.cart.length,
            (index) => CartDetailsViewCard(productItem: controller.cart[index]),
          ),
          SizedBox(height: defaultPadding),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () {}, child: Text("Next - \$30")),
          ),
        ],
      ),
    );
  }
}
