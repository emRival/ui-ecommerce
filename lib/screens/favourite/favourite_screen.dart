import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_ecommerce/screens/favourite/components/body.dart';
import 'package:ui_ecommerce/state_managements/favorite_provider.dart';

class FavouriteScreen extends StatelessWidget {
  static String routeName = "/favourite";
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "Your Favorites",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Consumer<FavoriteProvider>(
              builder: (context, fav, child) => Text(
                  "${fav.favoriteProducts.length} items",
                  style: Theme.of(context).textTheme.bodySmall),
            ),
          ],
        ),
      ),
      body: const Body(),
    );
  }
}
