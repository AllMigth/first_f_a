import 'package:flutter/material.dart';
import '../../ui/products_listing_page/vertical_product_item_widget.dart';
import '../../models/product.dart';


class TwoProductsItemWidget extends StatelessWidget {
  final screenHeight;
  final Product product1, product2;

  const TwoProductsItemWidget({Key key, this.screenHeight, this.product1, this.product2}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.25,
      child: Row(
        children: <Widget>[
          Expanded(
            child: VerticaProductItemWidget(
            screenHeight: screenHeight,
              product: product1
            ),
          ),
           Expanded(
             child: VerticaProductItemWidget(
            screenHeight: screenHeight,
               product: product2
             ),           
          ),
        ],
      ),
    );
  }
}
