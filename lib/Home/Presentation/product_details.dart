import 'package:flutter/material.dart';
import 'package:toto_shop/Config/Themes/styles.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Product", 
        style: productText(),
        ),
      ),
///Product Details display here
body: Container(
  
),
    );
  }
}