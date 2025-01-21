import 'package:flutter/material.dart';

Widget rowSingleButton(
    {required String name, required String iconImage, required Color color}) {
  return Container(
    child: Column(
      children: [
        Container(
          width: 20,
          height: 20,
          child: Image.asset(
            iconImage,
            color: color,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF666666)),
        )
      ],
    ),
  );
}
