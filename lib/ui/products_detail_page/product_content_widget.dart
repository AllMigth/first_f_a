import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:puertoquito/models/places.dart';
import 'package:puertoquito/models/product.dart';
import 'package:puertoquito/widgets/red_button.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductContentWidget extends StatefulWidget {
  final Product product;
  final screenHeight;

  const ProductContentWidget({Key key, this.product, this.screenHeight})
      : super(key: key);

  @override
  _ProductContentWidgetState createState() => _ProductContentWidgetState();
}

class _ProductContentWidgetState extends State<ProductContentWidget> {
  List<Places> places;

  @override
  void initState() {
    super.initState();
    fetchPlaces();
  }

  fetchPlaces() async {
    final placeJson = await rootBundle.loadString("assets/images.json");
    places = MyPlacesList.fromJson(placeJson).places;
    print(places);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: widget.screenHeight * 0.15,
          ),
          VxSwiper.builder(
            itemCount: 5,
            aspectRatio: 1.0,
            enlargeCenterPage: true,
            itemBuilder: (context, index) {
              final rad = places[index];
              return VxBox(child: ZStack([]))
                  .bgImage(DecorationImage(
                      image: NetworkImage(rad.image),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.3), BlendMode.darken)))
                  .border(color: Colors.green, width: 5.0)
                  .withRounded(value: 60.0)
                  .make()
                  .p16()
                  .centered();
            },
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
                    text: "Hospedaje \$",
                    style: TextStyle(color: Color(0xFF0000FF), fontSize: 15),
                  ),
                  TextSpan(
                    text: "${widget.product.price}",
                    style: TextStyle(
                      color: Color(0xFF0000FF),
                      fontSize: 20,
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
                widget.product.name.replaceAll("\n", " ") + "\t\t\t\t",
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
            widget.product.productInfo,
            style: TextStyle(
              color: Color(0xFF909090),
              fontWeight: FontWeight.w900,
              fontSize: 14.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          VxRating(
            onRatingUpdate: (value) {},
            count: 3,
            selectionColor: Colors.yellow,
            size: 30,
            stepInt: true,
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: Color(0xFFECECEC),
            thickness: 3,
            height: 10,
          ),
          SizedBox(
            height: 20,
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
