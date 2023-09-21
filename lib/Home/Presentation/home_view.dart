import 'package:flutter/material.dart';
import 'package:toto_shop/Config/Themes/styles.dart';

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
            Container(
                color: Colors.amber[50],
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return const Card(
                        shadowColor: Color.fromARGB(255, 114, 89, 9),
                        elevation: 10,
                        child: Text("data"),
                      );
                    })),
            //Items gridview list goes here
            // GridView.builder(
            //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 2, // Number of items in each row
            //     mainAxisSpacing: 10.0, // Spacing between rows
            //     crossAxisSpacing: 10.0, // Spacing between columns
            //   ),
            //   itemCount: 15, // Replace with the actual length of your list
            //   itemBuilder: (BuildContext context, int index) {
            //     // Replace this with your custom item widget
            //     return Container(
            //       height: 30,
            //       width: 30,
            //       color: Color.fromARGB(255, 11, 11, 53),
            //     );
            //   },
            // )
            const SizedBox(
              height: 5,
            ),
            Expanded(
                child: CustomScrollView(
              slivers: [
                SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 119, 25, 96),
                          borderRadius: BorderRadius.circular(
                              15), 
                        ), 
                      );
                    },
                    childCount: 15,
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
