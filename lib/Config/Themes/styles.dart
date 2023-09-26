import 'package:flutter/material.dart';

TextStyle titleStyle(){
  return const TextStyle(
    fontSize: 40.0,
    color: Colors.purpleAccent,
    letterSpacing: 2.0,
    fontWeight: FontWeight.w700,
  );
}

TextStyle bodyText(){
  return const TextStyle(
    fontSize: 12.0, 
    color: Colors.black,
    letterSpacing: 2.0,
    fontWeight: FontWeight.w500,
  );
}
TextStyle productText(){
  return const TextStyle(
    fontSize: 10.0, 
    color: Color.fromARGB(255, 79, 110, 156),
    letterSpacing: 2.0,
    fontWeight: FontWeight.w500,
  );
}
TextStyle npriceText(){
  return const TextStyle(
    fontSize: 9.0, 
    color: Colors.black,
    letterSpacing: 2.0,
    fontWeight: FontWeight.w500,
  );
}
TextStyle opriceText(){
  return const TextStyle(
    fontSize: 10.0, 
    color: Color.fromARGB(255, 128, 124, 124),
    letterSpacing: 2.0,
    fontWeight: FontWeight.w500,
  );
}
