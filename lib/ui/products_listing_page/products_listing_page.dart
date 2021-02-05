import 'package:flutter/material.dart';
import 'package:puertoquito/models/product.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:puertoquito/ui/products_listing_page/intro.dart';
import 'left_image_product_item_widget.dart';
import 'right_image_product_item_widget.dart';
import 'two_products_item_widget.dart';

class ProductsListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Puerto Quito',
            style: GoogleFonts.aBeeZee(),
          ),
          elevation: 50,
          backgroundColor: Colors.white30,
          leading: Padding(
            padding: const EdgeInsets.all(12),
            child: Image.asset("assets/images/softyon.png"),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //RE WE CALL THE CLASS, put the widgets like this. THAT'S AWESOME,
              IntroWidget(
                screenHeight: screenHeight,
                product: presentationProduct,
              ),
              RightImageProductItemWidget(
                screenHeight: screenHeight,
                product: malacatos,
              ),
              LeftImageProductItemWidget(
                screenHeight: screenHeight,
                product: kayak,
              ),
              TwoProductsItemWidget(
                screenHeight: screenHeight,
                product1: balnearios,
                product2: lugaresTuristicos,
              ),
              /*RedButton(
                buttonText: "View all"
            ),*/
            ],
          ),
        ));
  }
}
/*
* IN THIS PAGE WE LIST THE PRODUCTS OF THE MAIN PAGE*/
