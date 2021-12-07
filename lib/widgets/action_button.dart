import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  ActionButton({required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 80,
      height: MediaQuery.of(context).size.height * 0.08,
      margin: EdgeInsets.only(top: 15),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Color(0xFF7522ac),
              side: BorderSide(width: 1, color: Colors.white),
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsets.all(20)),
          onPressed: onTap,
          child: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w900, fontSize: 20, color: Colors.white),
          )),
    );
  }
}
// class ActionButton extends StatelessWidget {
//   const ActionButton({
//     Key? key,
//     required this.ontap,
//     required this.text
//   }) : super(key: key);

// final String text;
// final VoidCallback ontap;
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton( //Elevation Button For Get Started
//       style: ElevatedButton.styleFrom(
//         primary: Color(0xFFF6801A), //background color of button
//      side: BorderSide(width:1, color:Colors.white), //border width and color
//      elevation: 2, //elevation of button
//       shape: RoundedRectangleBorder(
//      borderRadius: BorderRadius.circular(10)
//      ),
//       ),
//     onPressed: ontap,    
//      child: Text(text,
//      style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15,
//     color: Colors.white
//     ),
//      ),);
//   }
// }

