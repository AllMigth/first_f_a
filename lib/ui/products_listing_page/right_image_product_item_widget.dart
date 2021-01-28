import 'package:flutter/material.dart';
import 'package:puertoquito/ui/products_detail_page/product_detail_page.dart';
import 'package:puertoquito/ui/products_listing_page/blue_button.dart';
import 'package:puertoquito/widgets/fade_page_route.dart';
import '../../models/product.dart';
/*
* THIS CLASS IS FOR THE FIRST PRODUCT
* HERE WE DECLARE IN THE CONTAINER EVERYTHING THAT WE NEED*/

class RightImageProductItemWidget extends StatelessWidget {
  final screenHeight;
  final Product product;

  const RightImageProductItemWidget({Key key, this.screenHeight, this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          FadePageRoute(widget: ProductDetailPage(product: product)),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(left: 32), //Text aligment here
        height: screenHeight * 0.25,
        color: product.backgroundColor,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    product.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
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
            Expanded(
              flex: 6,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 10,
                    top: 70,
                    child: Transform.rotate(
                        angle: 0, child: Image.asset(product.imagePath)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
