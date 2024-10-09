import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/model/products.dart';
import 'package:ui_ecommerce/screens/details/components/image_detail.dart';
import 'package:ui_ecommerce/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          ImageDetail(product: product),
          RoundedContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getPropScreenWidth(20)),
                      child: Text(
                        product.title,
                        style: TextStyle(
                          fontSize: getPropScreenWidth(20),
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: EdgeInsets.all(getPropScreenWidth(15)),
                        width: getPropScreenWidth(64),
                        decoration: BoxDecoration(
                          color: product.isFavourite
                              ? kPrimaryColor.withOpacity(0.1)
                              : kSecondaryColor.withOpacity(0.1),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: Icon(
                          Icons.favorite,
                          size: getPropScreenWidth(18),
                          color: product.isFavourite
                              ? Colors.red
                              : kSecondaryColor.withOpacity(0.5),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: getPropScreenWidth(20),
                        right: getPropScreenWidth(64),
                      ),
                      child: ReadMoreText(product.description,
                          trimMode: TrimMode.Line,
                          trimLines: 2,
                          colorClickableText: kPrimaryColor,
                          trimCollapsedText: "\nSee More Detail >",
                          trimExpandedText: "\nSee Less Detail >",
                          moreStyle: seeMoreStyle,
                          lessStyle: seeMoreStyle),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: getPropScreenWidth(20)),
      padding: EdgeInsets.only(top: getPropScreenWidth(20)),
      width: double.infinity,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.2),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: child,
    );
  }
}
