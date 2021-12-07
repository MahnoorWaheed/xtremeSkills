import 'package:flutter/material.dart';

class CusTextField extends StatelessWidget {
  final String label;
  CusTextField({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 40, right: 40),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: label,
            fillColor: Color(0xFFe1e0e2),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(15),
            )),
      ),
    );
  }
}
