import 'package:flutter/material.dart';
import 'package:toto_shop/Presentation/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
  decoration: const BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/backg.jpg")
    )
  ),
),
Positioned(
  top: 10,
  child: AppBar(
  backgroundColor: Colors.white54,
  title: Text("Toto World",
  style: titleStyle(),),
)),
// Positioned(child: GridView(gridDelegate: ))
          
        ],
      ),
    );
  }
}