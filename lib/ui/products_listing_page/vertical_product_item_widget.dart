import 'package:flutter/material.dart';
import 'package:puertoquito/ui/products_detail_page/product_detail_page.dart';
import 'package:puertoquito/widgets/fade_page_route.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/product.dart';

class VerticaProductItemWidget extends StatelessWidget {
  final Product product;
  final screenHeight;

  const VerticaProductItemWidget({Key key, this.product, this.screenHeight})
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
        color: product.backgroundColor,
        child: Column(
          children: <Widget>[
            Image.asset(
              product.imagePath,
              height: screenHeight * 0.13,
            ),
            SizedBox(
              height: 5,
            ),
            VStack([
              product.name.text.xl3.black.maxLines(1).makeCentered().shimmer(),
            ]),
            Text(
              product.description,
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Color(0xFF909090),
                fontSize: 9,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
