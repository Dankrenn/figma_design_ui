import 'package:figma_design_ui/Style/colors.dart';
import 'package:flutter/material.dart';

abstract  class MyTextStyle
{
  static const  TextStyle textStyleAppBar = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 30,
  );
  static const  TextStyle textStyleTextButton = TextStyle(
    color: MyColor.easyGreen,
    fontSize: 16,
  );
  static const  TextStyle textStyleTextFild = TextStyle(
    color: MyColor.easyGray,
    fontSize: 18,
  );
}
