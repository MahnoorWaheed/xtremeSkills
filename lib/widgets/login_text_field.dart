import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.label
  }) : super(key: key);

final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.7,
       height: MediaQuery.of(context).size.height*0.06,
      margin: EdgeInsets.only(top: 20),
      child: TextFormField(
        
        decoration: InputDecoration(
    // labelText: label,
    hintText: label,
    contentPadding: EdgeInsets.only(left: 10),
      fillColor: Color(0xFFe1e0e2), filled: true,
     enabledBorder: OutlineInputBorder(
       borderSide: BorderSide(width: 1, color: Colors.grey),
       borderRadius: BorderRadius.circular(10),
     ),
      focusedBorder: OutlineInputBorder(
       borderSide: BorderSide(width: 1, color: Colors.grey),
       borderRadius: BorderRadius.circular(15),
     )),
      ),
     );
  }
}