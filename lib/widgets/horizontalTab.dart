import 'package:flutter/material.dart';
import 'package:pageview/widgets/tab_text.dart';

class HorizontalTabLayout extends StatefulWidget {
  HorizontalTabLayout({Key key}) : super(key: key);

  @override
  _HorizontalTabLayoutState createState() => _HorizontalTabLayoutState();
}

class _HorizontalTabLayoutState extends State<HorizontalTabLayout> {
  int _selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
       height: 300,
       child: Stack(
         children: <Widget>[
           Positioned(
             left:0,
             bottom: 0,
             top:0,
             child: Padding(
               padding:EdgeInsets.symmetric(vertical:30.0),
               child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: <Widget>[
               TabText(
                 text: "Forum",
                 isSelected: _selectedIndex==0 ? true: false,
                 onTapTab: (){
                   setState(() {
                     _selectedIndex=0;
                   });
                 },
               ),
                TabText(
                 text: "Users",
                 isSelected: _selectedIndex==1 ? true: false,
                 onTapTab: (){
                    setState(() {
                     _selectedIndex=1; 
                   });
                 },
               ),
                TabText(
                 text: "Platform",
                 isSelected: _selectedIndex==2 ? true: false,
                 onTapTab: (){
                    setState(() {
                     _selectedIndex=2;
                   });
                 },
               ),
         ],
       ),
             ),
           ),
         ],
       )
       
    );
  }
}