import 'dart:ui';

class Product{
  final String name, description, buttonText, imagePath, price, productInfo, cantidad;
  Color backgroundColor;
  Product({this.name, this.description, this.backgroundColor, this.buttonText, this.imagePath, this.price, this.productInfo, this.cantidad});
}

final Product pixelStand = Product(
  imagePath: "assets/images/hayaca.png",
  name: 'Delicias del Ecuador',
  description: 'Alimentos no perecibles',
  buttonText: '',
  backgroundColor: Color(0xFFF5F5F5),
  price: '18',
  productInfo: "Hayacas/Lasana  \n Deliciosos enlatados"
      "listo para calentar y servir"
);

final Product dayDreamview = Product(
  imagePath: "assets/images/hayaca.png",
  name: 'Mascarillas N95',
  description: 'Proteccion asegurada',
  buttonText: '',
  backgroundColor: Color(0xFFE0DDFF),
  price: '3',
  productInfo: "Desprotegerse ahora  \n es una mala opcion"
      "Cuida de ti y los tuyos"
  );

final Product pixel = Product(
  imagePath: "assets/images/AYACA.png",
  name: 'Alimentos no perecibles',
  description: 'Alimentacion asegurada',
  buttonText: 'Ver',
  backgroundColor: Color(0xFFF5F5F5),
  price: '2',
  productInfo: "Majado/Hornado  \n Deliciosos enlatados"
      "listo para calentar y servir"
);

final Product stadia = Product(
  imagePath: "assets/images/LASANA.png",
  name: 'Alimentos' ,
  description: 'Nueva presentacion',
  buttonText: 'Revisar',
  backgroundColor: Color(0xFFFBE9EB),
  price: '18',
  cantidad: '24',
  productInfo: "Lasana/Hornado \n enlatados de consumo rapido"
    "para calentar y servir"
);

final Product hornado = Product(
    imagePath: "assets/images/HORNADO.png",
    name: 'Hornado de pescado' ,
    description: 'Alimentos enlatados',
    buttonText: 'Revisar',
    backgroundColor: Color(0xFFFBE9EB),
    price: '18',
    cantidad: '24',
    productInfo: "Enlatados \n"
        "Listo para calentar y servir"
);

final Product majado = Product(
    imagePath: "assets/images/MAJADO.png",
    name: 'Majado de pescado' ,
    description: 'Alimentos enlatados',
    buttonText: 'Revisar',
    backgroundColor: Color(0xFFFBE9EB),
    price: '18',
    cantidad: '24',
    productInfo: "Enlatados \n"
        "Listo para calentar y servir"
);
