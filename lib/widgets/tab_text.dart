import 'package:flutter/material.dart';
import 'package:pageview/styles/styles.dart';
class TabText extends StatelessWidget {
  final bool isSelected;
  final String text;
  final Function onTapTab;
 TabText({@required this.text,this.isSelected=false,@required this.onTapTab});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle:-1.58 ,
      child: InkWell(
        onTap: onTapTab,
        child: Text(
          text,
          style: isSelected ? tabSelectedStyle : defaultStyle,
        ),
      ),
    );
  }
}