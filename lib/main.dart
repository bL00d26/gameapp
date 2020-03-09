import 'package:flutter/material.dart';
import 'package:pageview/widgets/fondo.dart';
import 'package:pageview/widgets/horizontalTab.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double angulo = 100;
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Fondo(),
          Align(
            alignment: Alignment.center,
            child: HorizontalTabLayout(),
          ),
          Center(            
            child: Container(
               height: 300.0,
                    width: 280.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    height: 300.0,
                    width: 280.0,
                    color: Colors.red,
                  ),
                  Container(
                    height: 300.0,
                    width: 280.0,
                    color: Colors.green,
                  )
                ],
              ),
            ),
          )

        ],
      )
      
    );
  }
}