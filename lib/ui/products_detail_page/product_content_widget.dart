import 'package:flutter/material.dart';
import 'package:puertoquito/models/product.dart';
import 'package:puertoquito/widgets/red_button.dart';
import 'icon_title_widget.dart';
import 'product_detail_top_bar.dart';

class ProductContentWidget extends StatelessWidget {
  final Product product;
  final screenHeight;

  const ProductContentWidget({Key key, this.product, this.screenHeight})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: screenHeight * 0.14,
          ),
          Hero(
            tag: product.name,
            child: Image.asset(
              product.imagePath,
              height: screenHeight * 0.35,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              /* Text(
                "Primera compra*",
                style: TextStyle(
                  color: Color(0xFF909090),
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                ), */

              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "\$",
                    style: TextStyle(color: Color(0xFF0000FF), fontSize: 12),
                  ),
                  TextSpan(
                    text: "${product.price}",
                    style: TextStyle(
                      color: Color(0xFF0000FF),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ]),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Text(
                product.name.replaceAll("\n", " ") + "\t\t\t\t",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 19.0,
                ),
              ),
              Image.asset("assets/images/softyon.png", height: 20),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            product.productInfo,
            style: TextStyle(
              color: Color(0xFF909090),
              fontWeight: FontWeight.w900,
              fontSize: 14.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: Color(0xFFECECEC),
            thickness: 3,
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RedButton(
                buttonText: "Visitar",
              ),
              Spacer(),
              Material(
                elevation: 4,
                color: Colors.white,
                shape: CircleBorder(),
                child: Icon(
                  Icons.add,
                  size: 35,
                  color: Color(0xFF0000FF),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
