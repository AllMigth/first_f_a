import 'dart:ui';

class Product {
  final String name,
      description,
      buttonText,
      imagePath,
      price,
      productInfo,
      cantidad;
  Color backgroundColor;
  Product(
      {this.name,
      this.description,
      this.backgroundColor,
      this.buttonText,
      this.imagePath,
      this.price,
      this.productInfo,
      this.cantidad});
}

final Product fiestasJulio = Product(
    imagePath: "assets/images/stadia.png",
    name: 'Fiesta de la Virgen del Carmen',
    description: 'Celebracion religiosa anual',
    buttonText: '',
    backgroundColor: Color(0xFFF5F5F5),
    price: '18',
    productInfo: "Desfiles, fuegos pirotecnicos, rifas de animales"
        "danzas, orquesta, etc.");

final Product comidaTipica = Product(
    imagePath: "assets/images/stadia.png",
    name: 'Comida Tipica',
    description: 'Alimentos no perecibles',
    buttonText: '',
    backgroundColor: Color(0xFFF5F5F5),
    price: '18',
    productInfo: "Hayacas/Lasana  \n Deliciosos enlatados"
        "listo para calentar y servir");

final Product rutasDeAventura = Product(
    imagePath: "assets/images/kayak.jpg",
    name: 'Rutas de aventura',
    description: 'Proteccion asegurada',
    buttonText: '',
    backgroundColor: Color(0xFFF5F5F5),
    price: '3',
    productInfo:
        "Disponible en Piedra de Vapor, clases, disponible para todo publico");

final Product lugaresTuristicos = Product(
    imagePath: "assets/images/AYACA.png",
    name: "Restauran D'Camy ",
    description: 'Diversion asegurada',
    buttonText: 'Ver',
    backgroundColor: Color(0xFFF5F5F5),
    price: '2',
    productInfo: "Majado/Hornado  \n Deliciosos enlatados"
        "listo para calentar y servir");

final Product balnearios = Product(
    imagePath: "assets/images/balnearios.jpg",
    name: 'Casacada Azul',
    description: 'Disponible',
    buttonText: 'Revisar',
    backgroundColor: Color(0xFFF5F5F5),
    price: '18',
    cantidad: '24',
    productInfo: "Lasana/Hornado \n enlatados de consumo rapido"
        "para calentar y servir");

final Product kayak = Product(
    imagePath: "assets/images/kayak.jpg",
    name: 'Kayak',
    description: 'Deporte extremo',
    buttonText: 'Revisar',
    backgroundColor: Color(0xFFF5F5F5),
    price: '20',
    cantidad: '1',
    productInfo:
        "Disponible en Piedra de Vapor, clases, disponible para todo publico");

final Product malacatos = Product(
    imagePath: "assets/images/malacatos.jpg",
    name: 'Hospedaje',
    description: 'Hosterias y hoteles',
    buttonText: 'Revisar',
    backgroundColor: Color(0xFFF5F5F5),
    price: '18',
    cantidad: '24',
    productInfo: "Hosteria \n"
        "Areas verdes, hospedaje, piscina. \n"
        "Ubicado en la via al Achiote");
