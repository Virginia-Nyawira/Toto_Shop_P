import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';



Widget carouselView(){
 var list = [
  'images/backg.jpg',
  'images/girl.jpg',
  'images/boy.jpg',
];

  return Container(
    width: double.infinity, // Set the desired width for the widget
      height: 100, // Set the desired height for the widget
      child: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 200,
              enableInfiniteScroll: true,
              autoPlay: true,
              // Add any other carousel options you need
            ),
            items: list.map((imagePath) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            }).toList(),
          ),
          const Positioned(
            bottom: 10,
            left: 10,
            child: Padding(
              padding: EdgeInsets.only(left: 50),
              child: Text(
                '20% Off',
                style: TextStyle(
                  color: Color.fromARGB(255, 42, 2, 49),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
  );
}