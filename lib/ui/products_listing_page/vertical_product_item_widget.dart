import 'package:flutter/material.dart';
import 'package:puertoquito/ui/products_detail_page/product_detail_page.dart';
import 'package:puertoquito/widgets/fade_page_route.dart';
import '../../models/product.dart';

class VerticaProductItemWidget extends StatelessWidget {

  final Product product;
  final screenHeight; 

  const VerticaProductItemWidget({Key key, this.product, this.screenHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          FadePageRoute(widget: ProductDetailPage(
              product: product)),
        );
      },
      child: Container(
        color: product.backgroundColor,
        child: Column(
          children: <Widget>[
            Image.asset(
              product.imagePath,
              height: screenHeight * 0.17,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                product.name,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF383843),
                  fontSize: 14,
                  ),
              ),
              Text(
                product.description,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF383843),
                  fontSize: 8,
                  ),
              ),
          ],
        ),
      ),
    );
  }
}