import 'package:flutter/material.dart';
import 'package:puertoquito/models/product.dart';
import 'package:puertoquito/ui/products_detail_page/contact_content_widget.dart';
import 'package:puertoquito/widgets/fade_page_route.dart';
import 'package:puertoquito/widgets/red_button.dart';

import 'left_image_product_item_widget.dart';
import 'right_image_product_item_widget.dart';
import 'top_bar.dart';
import 'two_products_item_widget.dart';

class ProductsListingPage extends StatelessWidget{
  final Product product;

  const ProductsListingPage({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 50,
        backgroundColor: Colors.deepOrange[400],
        leading: Padding(
          padding: const EdgeInsets.all(13),
          child: Image.asset("assets/images/softyon.png"),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.push(context, FadePageRoute(widget: ContactContentWidget(
                  product: product)),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Icon(
                  Icons.menu

              )
            ),
          ),
        ],
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
            RightImageProductItemWidget(
              screenHeight: screenHeight,
              product: pixel,
            ),
            TwoProductsItemWidget(
              screenHeight: screenHeight,
              product1: pixelStand,
              product2: dayDreamview,
            ),
            /*RedButton(
                buttonText: "View all"
            ),*/
          ],
        ),
      ),
    );
  }
}
/*
* IN THIS PAGE WE LIST THE PRODUCTS OF THE MAIN PAGE*/