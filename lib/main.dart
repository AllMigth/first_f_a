import 'package:flutter/material.dart';
import 'package:puertoquito/models/product.dart';
import 'ui/products_detail_page/product_detail_page.dart';
import 'ui/products_listing_page/products_listing_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() =>  runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'OpenSans',
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white,
      ),
      home: ProductsListingPage(),
    );
  }
}