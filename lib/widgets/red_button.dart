import 'package:flutter/material.dart';

class RedButton extends StatelessWidget {
  final String buttonText;

  const RedButton({Key key, this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      //* Rellenar esto para que mande al numero del local

      padding: const EdgeInsets.symmetric(horizontal: 96),
      textColor: Colors.white,
      color: Color(0xFFDA1D21),
      child: Text(
        buttonText.toUpperCase(),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
        Radius.circular(30),
      )),
    );
  }
}
