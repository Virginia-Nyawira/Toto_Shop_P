import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toto_shop/Home/Services/Provider/get_products_provider.dart';

class FavouriteProducts extends StatelessWidget {
  const FavouriteProducts({super.key});

  @override
  Widget build(BuildContext context) {
    HomeProductsProvider homeProductsProvider =
        Provider.of<HomeProductsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
        title: const Text("Favourite Products"),
      ),
      body: ListView.builder(
        itemCount: homeProductsProvider.favouriteProducts.length,
        itemBuilder: (context, _) {
          if (homeProductsProvider.favouriteProducts.isNotEmpty) {
            return const Card(child: Text("data"));
          } else {
            const Card(
              child: Text("No data"),
            );
          }
        },
      ),
    );
  }
}
