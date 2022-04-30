import 'package:calorie_tracker/colors.dart';
import 'package:flutter/material.dart';
Widget buildTextButton(BuildContext context) {
  return Container(

    height: 50,
    decoration: BoxDecoration(
      color: ColorManager.secondaryColor,
      borderRadius: BorderRadius.circular(15.0)
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
         Text(
          'Send',
          style: TextStyle(color: ColorManager.whiteTextColor, fontSize: 18, fontWeight: FontWeight.w400),
        ),
         VerticalDivider(
          width: 0.5,
          thickness: 2.5,
          indent: 10,
          endIndent: 10,
          color: ColorManager.barColor,
        ),
         Text(
          'Receive',
          style: TextStyle(color: ColorManager.whiteTextColor, fontSize: 18, fontWeight: FontWeight.w400),
        ),
        VerticalDivider(
          width: 0.5,
          thickness: 2.5,
          indent: 10,
          endIndent: 10,
          color: ColorManager.barColor,
        ),

         Text(
          'Trade',
          style: TextStyle(color: ColorManager.whiteTextColor, fontSize: 18, fontWeight: FontWeight.w400),
        )
      ],
    ),
  );
}