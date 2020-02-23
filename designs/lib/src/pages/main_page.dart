import 'package:flutter/material.dart';

import 'package:flutters_designs/src/widgets/background_gradient.dart';

class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        BackgroundGradient(
          Color.fromRGBO(152, 234, 151, 1.0),
          Color.fromRGBO(35, 37, 57, 1.0)
        ),
        SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _buttonGoTo(context, 'basico', 'Basic Design', Colors.lightBlue),
              SizedBox(height: 50.0,),
              _buttonGoTo(context, 'scroll', 'Scroll Design', Colors.pinkAccent),
              SizedBox(height: 50.0,),
              _buttonGoTo(context, 'botones', 'Special Design', Colors.green),
            ],
          ),
        )
      ],
    );
  }

  Widget _buttonGoTo(BuildContext context, String src, String nameButton, Color colorButton){
    return Center(
      child: RaisedButton(
        shape: StadiumBorder(),
        color: colorButton,
        textColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Text(nameButton, style: TextStyle(fontSize: 20.0)),
        ),
        onPressed: () => Navigator.pushNamed(context, src)
      ),
    );
  }

}
