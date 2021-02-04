import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:puertoquito/ui/products_detail_page/product_content_widget.dart';
import 'package:puertoquito/ui/products_detail_page/product_detail_page.dart';
import 'package:puertoquito/ui/products_listing_page/blue_button.dart';
import 'package:puertoquito/widgets/fade_page_route.dart';
import '../../models/product.dart';
/*
* THIS CLASS IS FOR THE FIRST PRODUCT
* HERE WE DECLARE IN THE CONTAINER EVERYTHING THAT WE NEED*/

class LeftImageProductItemWidget extends StatelessWidget {
  final screenHeight;
  final Product product;

  const LeftImageProductItemWidget({Key key, this.screenHeight, this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //ADD GESTURE DETECTOR FOR NAVIGATE, SIMPLE
      onTap: () {
        Navigator.push(
          context,
          FadePageRoute(widget: ProductDetailPage(product: product)),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(left: 25), //Text aligment here
        height: screenHeight * 0.18,
        color: product.backgroundColor,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Hero(
                tag: product.name,
                child: Image.asset(product.imagePath),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      product.name,
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      product.description,
                      style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF909090)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    BlueButton(
                      product: product,
                    ) //Button called here
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
