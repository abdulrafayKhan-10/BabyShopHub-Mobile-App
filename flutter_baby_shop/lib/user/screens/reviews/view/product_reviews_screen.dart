import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Column(
        children: const [
          Image(
            image: AssetImage("assets/screens/reviews.png"),
          ),
          Image(
            image: AssetImage("assets/screens/Add review rate.png"),
          ),
        ],
      );
  }
}
