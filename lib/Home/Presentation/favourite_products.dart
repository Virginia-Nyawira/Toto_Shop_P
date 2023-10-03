import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:toto_shop/Config/Themes/styles.dart';
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
        backgroundColor: Color.fromARGB(255, 219, 142, 41),
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
              if (favProd.isEmpty) {
                return Center(
                  child: Column(
                    children: [
                      const Icon(
                        FontAwesomeIcons.wineGlassEmpty,
                        color: Colors.brown,
                        size: 30,
                      ),
                      Text(
                        "No Favourites Yet",
                        style: titleStyle(),
                      )
                    ],
                  ),
                );
              } else {
                return Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${product.discount} % off",
                              style: const TextStyle(
                                  fontStyle: FontStyle.italic, fontSize: 10.0),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 3,
                          child: Image.network(
                            product.image ?? "images/image1.jpg",
                            fit: BoxFit.fill,
                            // height: 170,
                            // width: 100,
                          )),
                      const Divider(),
                      //Image.network(item.image ?? "images/image1.jpg"),
                      Expanded(
                          child: Text(
                        "${product.description}",
                        style: productText(),
                      )),
                      Text(
                        "By ${product.seller}",
                        style: productText(),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Was: Ksh${product.oldPrice}",
                                style: opriceText()),
                            Text("Now: Ksh${product.newPrice}",
                                style: npriceText()),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
