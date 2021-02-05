import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
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
    return VStack([
      "Bienvenido"
          .text
          .maxLines(1)
          .semiBold
          .ellipsis
          .black
          .minFontSize(20)
          .makeCentered(),
      "El mejor feriado de Carnaval del Noroccidente de Pichincha  "
              "La mejor sazon en D'Camy Resturant  "
              "  123123132  "
          .marquee(textStyle: TextStyle(fontSize: 20))
          .h10(context)
    ]);
  }
}
