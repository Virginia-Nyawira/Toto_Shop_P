import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toto_shop/Home/Services/Provider/get_products_provider.dart';

// class FavouriteProducts extends StatelessWidget {
//   const FavouriteProducts({super.key});

//   @override
//   Widget build(BuildContext context) {
//     HomeProductsProvider homeProductsProvider =
//         Provider.of<HomeProductsProvider>(context);
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.purpleAccent,
//         centerTitle: true,
//         title: const Text("Favourite Products"),
//       ),
//       body: ListView.builder(
//         itemCount: homeProductsProvider.favouriteProducts.length,
//         itemBuilder: (context, _) {
//           // print("itemBuilder called");
//           if (homeProductsProvider.favouriteProducts.isNotEmpty) {
//              print("itemBuilder called");
//             return const Card(
//               elevation: 10,
//               child: Text("data"));
//           } else {
//             const Card(
//               elevation: 10,
//               child: Text("No data"),
//             );
//           }
//         },
//       ),
//     );
//   }
// }

class FavouriteProducts extends StatelessWidget {
  const FavouriteProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
        title: const Text("Favourite Products"),
      ),
      body: Consumer<HomeProductsProvider>(
        builder: (context, homeProductsProvider, _) {
          return ListView.builder(
            itemCount: 10,
            //itemCount: homeProductsProvider.favouriteProducts.length,
            itemBuilder: (context, index) {
              if (homeProductsProvider.favouriteProducts.isEmpty) {
                return const Card(
                  elevation: 10,
                  child: Text("NO data"),
                );
              } else {
                return const Card(
                  elevation: 10,
                  child: Text("tHERE IS data"),
                );
              }
            },
          );
        },
      ),
    );
  }
}