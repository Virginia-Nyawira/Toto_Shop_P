import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toto_shop/Core/Use_Cases/register_login.dart';
import 'package:toto_shop/Home/Presentation/home_view.dart';

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
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}


