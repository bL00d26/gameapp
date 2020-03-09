import 'package:flutter/material.dart';
class Fondo extends StatelessWidget {
  const Fondo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          final height = constraints.maxHeight;
          final width = constraints.maxWidth;

          return Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.amber,
                ),
              ),
              Positioned(
                left: -(height/2-width/2),
                bottom: height*0.15,
                child: Container(
                  width: height,
                  height: height,
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    shape: BoxShape.circle
                  ),
                  
                ),
              ),
               Positioned(
                right: -50,
                top: -100,
                child: Container(
                  width: height/2,
                  height: height/2,
                  decoration: BoxDecoration(
                    color: Colors.amber[200],
                    shape: BoxShape.circle
                  ),
                  
                ),
              ),

            ],
          );
        },
      );
  }
}