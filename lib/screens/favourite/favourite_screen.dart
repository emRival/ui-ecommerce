import 'package:flutter/material.dart';
import 'package:ui_ecommerce/screens/favourite/components/body.dart';

class FavouriteScreen extends StatelessWidget {
  static String routeName = "/favourite";
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite"),
      ),
      body: Body(),
    );
  }
}
