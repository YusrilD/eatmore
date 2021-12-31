import 'package:flutter/material.dart';

class Make {
  static Container line(
      {Color color = Colors.grey,
      double height = 1,
      double width = 1,
      double margin = 8}) {
    return Container(
      color: color,
      height: height,
      width: width,
      margin: EdgeInsets.all(margin),
    );
  }

  static Container submitButton(
    Function() onPress, {
    Color color = Colors.red,
    double height = 1,
    double width = 1,
    double margin = 8,
    double radius = 15,
    String text = "",
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
        color: color,
      ),
      height: height,
      width: width,
      margin: EdgeInsets.all(margin),
      child: Text("Hellow"),
    );
  }

  static TextFormField formUnderLine({
    String hintText = "",
    double hintSize = 14,
    Color hintColor = Colors.grey,
    Color fBorderSideColor = Colors.pink,
    double fBorderSideWidth = 2,
    Color eBorderSideColor = Colors.grey,
    double eBorderSideWidth = 2,
  }) {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: hintSize,
          color: hintColor,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: fBorderSideColor,
            width: fBorderSideWidth,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: eBorderSideColor,
            width: eBorderSideWidth,
          ),
        ),
      ),
    );
  }

  static Container imageRoundBorder(String image, {double width = 30}) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.grey.withOpacity(0.8),
          width: 0.7,
        ),
      ),
      child: Image.asset(image, width : width),
    );
  }
}
