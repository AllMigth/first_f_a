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

class IntroWidget extends StatelessWidget {
  final screenHeight;
  final Product product;

  const IntroWidget({Key key, this.screenHeight, this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //ADD GESTURE DETECTOR FOR NAVIGATE, SIMPLE
      // onTap: () {
      //   Navigator.push(
      //     context,
      //     FadePageRoute(widget: ProductDetailPage(product: product)),
      //   );
      // },
      child: Container(
        padding: const EdgeInsets.only(left: 5), //Text aligment here
        height: screenHeight * 0.16,
        color: product.backgroundColor,
        child: Center(
          child: Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: (Text(
                      product.name,
                      style: TextStyle(
                        fontSize: 29,
                        fontWeight: FontWeight.w800,
                      ),
                    )),
                  ),
                  Center(
                    child: Text(
                      product.description,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF909090)),
                    ),
                  )

                  //Button called here
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
