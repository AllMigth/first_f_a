import 'package:flutter/material.dart';
import 'package:puertoquito/ui/products_detail_page/product_detail_page.dart';
import 'package:puertoquito/widgets/fade_page_route.dart';
import '../../models/product.dart';

class BlueButton extends StatelessWidget {
  final Product product;

  const BlueButton({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.push(
          context,
          FadePageRoute(widget: ProductDetailPage(product: product)),
        );
      },
      child: Text(
        product.buttonText,
        style: TextStyle(
            color: Color(0xFFF5F5F5),
            fontWeight: FontWeight.w600,
            fontSize: 12),
      ),
      color: Color(0xFF0000FF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
    );
  }
}
