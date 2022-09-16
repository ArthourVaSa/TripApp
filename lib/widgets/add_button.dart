// ignore_for_file: must_be_immutable

import 'package:cubit_practice/misc/colors.dart';
import 'package:cubit_practice/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  String? text;
  IconData? icon;
  final Color color;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  bool? isIcon;

  AddButton(
      {Key? key,
      this.isIcon = false,
      this.text = "Hi",
      this.icon,
      required this.size,
      required this.color,
      required this.backgroundColor,
      required this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
      ),
      child: isIcon == false
          ? Center(
              child: AppText(
              text: text!,
              color: color,
              size: 15,
            ))
          : Center(
              child: Icon(
              icon,
              color: color,
            )),
    );
  }
}
