import 'package:flutter/material.dart';

class MyGestures extends StatelessWidget {
  const MyGestures({
    Key? key,
    required this.text,
    required this.ontap
  }) : super(key: key);

final String text;
final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(text, 
      style: TextStyle(fontSize: 15, color: Color(0xFFFA15541)),
      ),
      onTap: ontap,
    );
  }
}

