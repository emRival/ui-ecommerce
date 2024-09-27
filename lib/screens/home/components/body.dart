import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/screens/home/components/header_home_part.dart';
import 'package:ui_ecommerce/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: getPropScreenHeight(20)),
          const HeaderHomePart(),
          SizedBox(height: getPropScreenHeight(10)),
          Container(
            width: double.infinity,
            // height: 90,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            margin: EdgeInsets.all(getPropScreenWidth(20)),
            decoration: BoxDecoration(
              color: Color(0xff4a3298),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text.rich(
              TextSpan(
                style: const TextStyle(color: Colors.white),
                children: [
                  const TextSpan(text: "A Summer Suprise\n"),
                  TextSpan(
                    text: "Cashback 20%",
                    style: TextStyle(
                        fontSize: getPropScreenWidth(24),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
