import 'package:flutter/material.dart';

class BackgroundGradient extends StatelessWidget {

  Color from;
  Color end;

  BackgroundGradient(Color from, Color end){
    this.from = from;
    this.end = end;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            this.from,
            this.end
          ]
        )
      ),
    );
  }

}
