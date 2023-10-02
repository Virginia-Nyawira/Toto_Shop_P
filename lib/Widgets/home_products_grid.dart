import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toto_shop/Config/Themes/styles.dart';
import 'package:toto_shop/Home/Presentation/favourite_products.dart';
import 'package:toto_shop/Home/Services/Provider/get_products_provider.dart';

class HomeProductGrid extends StatefulWidget {
  const HomeProductGrid({
    super.key,
  });

  @override
  State<HomeProductGrid> createState() => _HomeProductGridState();
}

class _HomeProductGridState extends State<HomeProductGrid> {
  bool hasData = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<HomeProductsProvider>(context, listen: false)
          .getAllProducts();
      hasData = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: CustomScrollView(
      slivers: [
        Consumer<HomeProductsProvider>(builder: (context, value, child) {
          final homeProduct = value.homeProducts;
          return SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final item = homeProduct[index];
                return Card(
                  //padding: const EdgeInsets.all(5),
                  // height: 150,
                  // width: 100,
                  // decoration: BoxDecoration(
                  //   color: const Color.fromARGB(80, 207, 204, 207),
                  //   borderRadius: BorderRadius.circular(5),
                  // ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${item.discount} % off",
                              style: const TextStyle(
                                  fontStyle: FontStyle.italic, fontSize: 10.0),
                            ),

                            /// Add to tha favourites List Here
                            /// Like Button goes here
                            IconButton(
                                onPressed: () {
                                  if (value.homeProducts.contains(item)) {
                                    if (value.favouriteProducts.contains(item)) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              'Item already added to favourites list'),
                                        ),
                                      );
                                    } else {
                                      Provider.of<HomeProductsProvider>(context, listen: false)
                                          .addToFavourite(item);
                                      print(item.description);
                                    }
                                  }
                                },

                                // Provider.of<HomeProductsProvider>(context,
                                //         listen: false)
                                //     .addToFavourite(item);
                                //     print(item.description);
                                //  print("iTEM ADDED");

                                icon: Icon(
                                  Icons.favorite_outline,
                                  size: 18,
                                  color:
                                      Provider.of<HomeProductsProvider>(context)
                                              .favouriteProducts
                                              .contains(item)
                                          ? Colors.red
                                          : Colors.black,
                                ))
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 3,
                          child: Image.network(
                            item.image ?? "images/image1.jpg",
                            fit: BoxFit.fill,
                            // height: 170,
                            // width: 100,
                          )),
                      const Divider(),
                      //Image.network(item.image ?? "images/image1.jpg"),
                      Expanded(
                          child: Text(
                        "${item.description}",
                        style: productText(),
                      )),
                      Text(
                        "By ${item.seller}",
                        style: productText(),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Was: Ksh${item.oldPrice}",
                                style: opriceText()),
                            Text("Now: Ksh${item.newPrice}",
                                style: npriceText()),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: homeProduct.length,
            ),
          );
        }),
      ],
    ));
  }
}
