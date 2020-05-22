import 'package:flutter/material.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';
import 'package:puertoquito/models/product.dart';

class RedButton extends StatelessWidget {
  final String buttonText;
  
  const RedButton({Key key, this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: const EdgeInsets.symmetric(horizontal: 96),
      textColor: Colors.white,
      color: Color(0xFFDA1D21),
      child: Text(
        buttonText.toUpperCase(),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        )
      ),
      onPressed: sendMsg (),
    );
  }
}

sendMsg(bussines.number, bussines.msg){
  FlutterOpenWhatsapp.sendSingleMessage(
      "593978958201","Hello dude, i'm wanna make bussines with you");
}