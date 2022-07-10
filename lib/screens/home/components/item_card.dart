import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';

class ItemCard extends StatelessWidget {
  final Product? product;
  final Function()? press;
  const ItemCard({
    Key? key, this.product, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // when you are using the remaining part of the screen, it is advisable to use the expanded
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                // products is the name of the list of Product
                //[0] this takes in the index no and then we pass in what we need from that index no
                color: product!.color,
                borderRadius: BorderRadius.circular(16),
              ),
              // here we are getting the image from the list products of index no 0
              child: Hero(tag: "${product!.id!}", child: Image.asset("${product!.image}")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/4,),
            child: Text(
              "${product!.title}",
              style: TextStyle(
                color: kTextLightColor,
              ),
            ),
          ),
          Text(
            // the \ in front of the dollar sign is used to show the dollar sign
            "\$${product!.price}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

