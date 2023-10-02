import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toto_shop/Core/Use_Cases/register_login.dart';
import 'package:toto_shop/Home/Presentation/home_view.dart';
import 'package:toto_shop/Widgets/bottom_nav_bar.dart';

import 'Home/Services/Provider/get_products_provider.dart';

void main() {
  runApp(
     const MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
     create: (context) => HomeProductsProvider(), 
      child: 
MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const BottomNavigation(),
      ),
    );
  }
}

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => HomeProductsProvider(),
//       child: FutureBuilder(
//         future: _initializeData(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             // You can return a loading indicator here if needed.
//             return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         home: const Material(
//           child: Center(child: CircularProgressIndicator()),
//         ),
//       );
//           } 
//           // else if (snapshot.hasError) {
//           //   // Handle error case
//           //   return Center(child: Text('Error: ${snapshot.error}'));
//           // } 
//           else {
//             // Data is ready, return your widget tree
//             return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         home: const BottomNavigation(),
//       );
//           }
//         },
//       ),
//     );
//   }

//    Future<void> _initializeData() async {
//     final productsProvider = Provider.of<HomeProductsProvider>(context, listen: false);
//     await productsProvider.getAllProducts();
//   }

// }