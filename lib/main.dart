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
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Fondo(),
          Align(
            alignment: Alignment.center,
            child: HorizontalTabLayout(),
          ),
          Padding(    
            padding: EdgeInsets.only(left:size.width*0.2,top:size.height*0.3),        
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