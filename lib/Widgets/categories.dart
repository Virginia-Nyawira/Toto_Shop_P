import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toto_shop/Config/Themes/styles.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final IconButton iconButton;
    var card = Card(
            child: Column(
              children: [
                IconButton(
                  icon: const Icon(FontAwesomeIcons.childDress),
                  onPressed: () {
                    // Handle button press
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("  Dresses  ",style: productText(),),
                ),
              ],
            ),
          );
    return Container(
      height: 77,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          card,
          Card(
            child: Column(
              children: [
                IconButton(
                  icon: const Icon(FontAwesomeIcons.shoePrints),
                  onPressed: () {
                    // Handle button press
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("   shoes   ",style: productText(),),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                IconButton(
                  icon: const Icon(FontAwesomeIcons.bed),
                  onPressed: () {
                    // Handle button press
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("    Cots    ",style: productText(),),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.toys),
                  onPressed: () {
                    // Handle button press
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("     Toys     ",style: productText(),),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                IconButton(
                  icon: const Icon(FontAwesomeIcons.accessibleIcon),
                  onPressed: () {
                    // Handle button press
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("accessories",style: productText(),),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                IconButton(
                  icon: const Icon(FontAwesomeIcons.gifts),
                  onPressed: () {
                    // Handle button press
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("   Gifts    ",style: productText(),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
