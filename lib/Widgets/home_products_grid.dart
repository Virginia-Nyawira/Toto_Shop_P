import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toto_shop/Home/Services/Provider/get_products_provider.dart';

class HomeProductGrid extends StatefulWidget {
  const HomeProductGrid({
    super.key,
  });

  @override
  State<HomeProductGrid> createState() => _HomeProductGridState();
}

class _HomeProductGridState extends State<HomeProductGrid> {
  bool hasData = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<HomeProductsProvider>(context, listen: false).getAllProducts();
      hasData= true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: CustomScrollView(
      slivers: [
        Consumer<HomeProductsProvider>(
          builder: (context,value,child) {
            final homeProduct = value.homeProducts;
            return SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (context,index) {
                  final item = homeProduct[index];
                  return Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 119, 25, 96),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(item.description?? 'No description'),
                  );
                },
                childCount: homeProduct.length,
              ),
            );
          }
        ),
      ],
    ));
  }
}
