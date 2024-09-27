import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/screens/home/components/icon_with_trigger.dart';
import 'package:ui_ecommerce/screens/home/components/search_field.dart';
import 'package:ui_ecommerce/size_config.dart';

class HeaderHomePart extends StatelessWidget {
  const HeaderHomePart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconWithTrigger(
            svgIcon: "assets/icons/Cart Icon.svg",
            trigger: "3",
          ),
          IconWithTrigger(
            svgIcon: "assets/icons/Bell.svg",
          ),
        ],
      ),
    );
  }
}




