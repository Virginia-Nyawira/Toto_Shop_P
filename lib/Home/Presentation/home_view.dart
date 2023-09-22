import 'package:flutter/material.dart';
import 'package:toto_shop/Config/Themes/styles.dart';
import 'package:toto_shop/Widgets/home_carousel.dart';
import 'package:toto_shop/Widgets/home_products_grid.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Drawer(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.badge_outlined,
                size: 29,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //Carousel goes here
            carouselView(),
            // Container(
            //     color: Colors.amber[50],
            //     height: 150,
            //     child: ListView.builder(
            //         scrollDirection: Axis.horizontal,
            //         itemCount: 20,
            //         itemBuilder: (context, index) {
            //           return const Card(
            //             shadowColor: Color.fromARGB(255, 114, 89, 9),
            //             elevation: 10,
            //             child: Text("data"),
            //           );
            //         })),
            const SizedBox(
              height: 5,
            ),
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
                      style: bodyText(), 
                    ))
              ],
            ),
            const SizedBox(
              height: 5,
            ),
       //Items gridview list goes here
            const HomeProductGrid()
          ],
        ),
      ),
    );
  }
}

