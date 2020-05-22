import 'package:flutter/material.dart';
import 'package:puertoquito/models/product.dart';
import 'package:puertoquito/widgets/fade_page_route.dart';

class ProductDetailTopBar extends StatelessWidget {

  const ProductDetailTopBar({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 50,
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
              //POP RETURN TO THE LAST VIEW
            },
              child: Icon(Icons.arrow_back),
          ),
          Spacer(),
//          Icon(
//            Icons.search,
//            color: Colors.white,
//          ),
          SizedBox(
            width: 20,
          ),
//          GestureDetector(
//              onTap: () {
//                Navigator.push(context, FadePageRoute(widget: ContactContentWidget(
//                product: product)),
//                );
//                //POP RETURN TO THE LAST VIEW
//              },
//
//              child: Icon(
//                Icons.menu,
//                size: 30,
//                color: Colors.white,
//              ),
////              child: Image.asset(
////                "assets/icons/menu.png",
////                color: Colors.white,
////                height: 30,
////              )
//          ),

        ],
      ),
    );
  }
}
