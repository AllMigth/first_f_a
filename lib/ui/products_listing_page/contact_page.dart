import 'package:flutter/material.dart';
import 'package:puertoquito/models/product.dart';
import 'package:google_fonts/google_fonts.dart';
import 'left_image_product_item_widget.dart';
import 'right_image_product_item_widget.dart';
import 'two_products_item_widget.dart';

class ProductsListingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Puerto Quito',
          ),
          elevation: 50,
          backgroundColor: Colors.deepOrange[400],
          leading: Padding(
            padding: const EdgeInsets.all(12),
            child: Image.asset("assets/images/softyon.png"),
          ),
        /*actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15),
            child: Icon(
                Icons.menu
            )
          ),
        ],*/
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //TopBar(), //HERE WE CALL THE CLASS, put the widgets like this. THAT'S AWESOME,
            RightImageProductItemWidget(
                screenHeight: screenHeight,
                product: pixel,
            ),
            LeftImageProductItemWidget(
              screenHeight: screenHeight,
              product: stadia,
            ),
            TwoProductsItemWidget(
              screenHeight: screenHeight,
              product1: pixelStand,
              product2: dayDreamview,
            ),
            TwoProductsItemWidget(
              screenHeight: screenHeight,
              product1: pixelStand,
              product2: dayDreamview,
            ),
            RedButton(
                buttonText: "View all"
            ),
          ],
        ),
      ),
    );
  }
}
/*
* IN THIS PAGE WE LIST THE PRODUCTS OF THE MAIN PAGE*/