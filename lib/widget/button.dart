import 'package:calorie_tracker/res/colors.dart';
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

  Widget roundButton(Icon icon, Color color) {
    return GestureDetector(
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.grey.shade300),
            color: color),
        child: icon,
      ),
      onTap: () {},
    );
  }