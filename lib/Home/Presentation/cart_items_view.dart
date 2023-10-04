import 'package:flutter/material.dart';

class CartItemView extends StatefulWidget {
  const CartItemView({super.key});

  @override
  State<CartItemView> createState() => _CartItemViewState();
}

class _CartItemViewState extends State<CartItemView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Cart Items appear here!!"
          ),
        ),
      ),
    );
  }
}