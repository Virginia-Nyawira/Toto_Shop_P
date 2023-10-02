import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toto_shop/Home/Models/product_model.dart';
import 'package:toto_shop/Home/Services/Provider/get_products_provider.dart';

class FavouriteProducts extends StatefulWidget {
  const FavouriteProducts({super.key});

  @override
  State<FavouriteProducts> createState() => _FavouriteProductsState();
}

class _FavouriteProductsState extends State<FavouriteProducts> {
  @override
  Widget build(BuildContext context) {
    print('FavouriteProducts widget rebuilt');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
        title: const Text("Favourite Products"),
      ),
      body: Consumer<HomeProductsProvider>(
        builder: (context, homeProductsProvider, widget) {
          print('Consumer builder function called');
          List<HomeProducts> favProd = homeProductsProvider.favouriteProducts;
          return ListView.builder(
            itemCount: favProd.length,
            //itemCount: homeProductsProvider.favouriteProducts.length,
            itemBuilder: (context, index) {
              final product = favProd[index];
              // ignore: prefer_const_constructors
              return Card(
                //color: Colors.black,
                elevation: 10,
                child: Text(product.seller??''),
              );
              // if (homeProductsProvider.favouriteProducts.isEmpty) {
              //   return const Card(
              //     elevation: 10,
              //     child: Text("NO data"),
              //   );
              // } else {
              //   return const Card(
              //     elevation: 10,
              //     child: Text("tHERE IS data"),
              //   );
              // }
            },
          );
        },
      ),
    );
  }
}
