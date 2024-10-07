import 'package:flutter/material.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/model/products.dart';
import 'package:ui_ecommerce/screens/home/components/section_title.dart';
import 'package:ui_ecommerce/size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
          child: const SectionTitle(
            title: "Popular Products",
          ),
        ),
        SizedBox(height: getPropScreenHeight(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            height: getPropScreenWidth(220),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(10)),
              child: Row(
                children: List.generate(demoProducts.length, (index) {
                  final Product product = demoProducts[index];
                  return ItemPopularProduct(
                    product: product,
                  );
                }),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ItemPopularProduct extends StatelessWidget {
  const ItemPopularProduct({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(10)),
      child: SizedBox(
        width: getPropScreenWidth(140),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.05,
              child: Container(
                padding: EdgeInsets.all(getPropScreenWidth(20)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kSecondaryColor.withOpacity(0.2)),
                child: Image.asset(
                  product.images[0],
                ),
              ),
            ),
            SizedBox(height: getPropScreenHeight(15)),
            Text(
              product.title,
              style: const TextStyle(color: Colors.black),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${product.price}",
                  style: TextStyle(
                      fontSize: getPropScreenWidth(18),
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor),
                ),
                Container(
                  height: getPropScreenWidth(28),
                  width: getPropScreenWidth(28),
                  padding: EdgeInsets.all(getPropScreenWidth(8)),
                  decoration: BoxDecoration(
                    color: product.isFavourite == true
                        ? kPrimaryColor.withOpacity(0.2)
                        : kSecondaryColor.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.favorite,
                      color: product.isFavourite == true
                          ? Colors.red
                          : kSecondaryColor,
                      size: getPropScreenWidth(13),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
