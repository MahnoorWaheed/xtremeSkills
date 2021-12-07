import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    required this.ontap,
    required this.text
  }) : super(key: key);

final String text;
final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton( //Elevation Button For Get Started
      style: ElevatedButton.styleFrom(
        primary: Color(0xFFF6801A), //background color of button
     side: BorderSide(width:1, color:Colors.white), //border width and color
     elevation: 2, //elevation of button
      shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.circular(10)
     ),
      ),
    onPressed: ontap,    
     child: Text(text,
     style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15,
    color: Colors.white
    ),
     ),);
  }
}

