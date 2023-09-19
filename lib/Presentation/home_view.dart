import 'package:flutter/material.dart';
import 'package:toto_shop/Presentation/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("images/backg.jpg"))),
              ),
            ),
            Positioned(
                top: 10,
                right: 150,
                child:  Text(
                    "Toto World",
                    style: titleStyle(),
                  ),
                )
            // Positioned(child: GridView(gridDelegate: ))
          ],
        ),
      ),
    );
  }
}
