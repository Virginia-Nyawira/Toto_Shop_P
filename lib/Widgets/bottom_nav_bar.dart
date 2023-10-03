import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toto_shop/Home/Presentation/favourite_products.dart';
import 'package:toto_shop/Home/Presentation/home_view.dart';
import 'package:toto_shop/Home/Services/Provider/get_products_provider.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const FavouriteProducts(),
    const Placeholder(),
    //const Placeholder(),
  ];



  // @override
  // void initState() {
  //   super.initState();
  //   _initializeData();
  // }

  @override
  Widget build(BuildContext context) {
       return Scaffold(
      body: 
      FutureBuilder(
        future: _initializeData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // You can return a loading indicator here if needed.
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            // Handle error case
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            // Data is ready, return your widget tree
            return _pages[_currentIndex];
          }
        },
      ),
      
     // _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 163, 108, 134),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
              BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favs',
          ),
          //  //
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
   ///A call to initialize HomeProductsProvider instance to load the favourite products when the app starts:
   Future<void> _initializeData() async {
    final productsProvider = Provider.of<HomeProductsProvider>(context, listen: false);
    await productsProvider.getAllProducts();
  }
}
