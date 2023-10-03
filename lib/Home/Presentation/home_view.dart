import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:toto_shop/Config/Themes/styles.dart';
import 'package:toto_shop/Home/Presentation/favourite_products.dart';
import 'package:toto_shop/Home/Services/Provider/get_products_provider.dart';
import 'package:toto_shop/Widgets/home_carousel.dart';
import 'package:toto_shop/Widgets/home_products_grid.dart';

import '../../Widgets/categories.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Toto World',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Add your logic here
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Add your logic here
                },
              ),

          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
  // Navigator.push(
  //   context,
  //   MaterialPageRoute(
  //     builder: (context) => const FavouriteProducts(),
  //   ),
  // );
},
              icon: const Icon(
                Icons.shopping_cart,
                size: 29,
                color: Color.fromARGB(255, 119, 39, 10),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
 //Carousel goes here
            carouselView(),
            const SizedBox(
              height: 5,
            ),
 //Choose your need
            Text(
              "Choose your need",
              style: bodyText().copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
//ListView here
            const CategoryList(),

            const SizedBox(
              height: 5,
            ),

 //Grid view of popular products
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: bodyText(),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "View All",
                      style: bodyText().copyWith(
                        color: Colors.blue,
                      ),
                    ))
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            //Items gridview list goes here
            //const HomeProductGrid()
            ChangeNotifierProvider(
              create: (context) => HomeProductsProvider(),
              child: const HomeProductGrid(),
            )
          ],
        ),
      ),
    );
  }
}

