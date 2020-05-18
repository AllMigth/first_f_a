import 'dart:ui';

class ContactInfo{
  final String name, description, buttonText, imagePath, price, productInfo;
  Color backgroundColor;
  ContactInfo({this.name, this.description, this.backgroundColor, this.buttonText, this.imagePath, this.price, this.productInfo});
}

final ContactInfo informationSoftyon = ContactInfo(
    imagePath: "assets/images/softyon.png",
    name: 'SOFTYON' ,
    description: 'Emprendimiento de software',
    buttonText: 'Visitar',
    backgroundColor: Color(0xFFFBE9EB),
    price: '30',
    productInfo: "Software como servicio \n"
        "Digitalizamos tu emprendimiento mostrandolo al mundo a traves de tu aplicacion movil"
);