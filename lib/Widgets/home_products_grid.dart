import 'package:flutter/material.dart';

class HomeProductGrid extends StatelessWidget {
  const HomeProductGrid({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: CustomScrollView(
      slivers: [
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (context,index) {
              return Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 119, 25, 96),
                  borderRadius: BorderRadius.circular(15),
                ),
              );
            },
            childCount: 10,
          ),
        ),
      ],
    ));
  }
}
