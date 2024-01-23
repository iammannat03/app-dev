import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  // here we declare all the required parameters for the ProductCard constructor
  final String title;
  final double price;
  final String image;
  final Color backgroundColor;
  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            /**
             * yaha pe ye sab learn karna hai:
             * 1) .of(context) ka use  [done]
             * 
             */
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '\$$price',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(
            height: 5,
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Image(
              /**
               * remember that all the images that are to be used in the app is to be stored in the assets folder.
               * add the url of the image in the AssetImage() like below inside the Image widget
               */
              image: AssetImage(image),
              height: 175,
            ),
          )
        ],
      ),
    );
  }
}
