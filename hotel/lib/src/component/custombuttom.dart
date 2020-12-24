import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
final String title;
final Function onTap;
final Color bgColor;
final Color txtColor;
final Function onPress;
  const CustomButtom({this.title,
    this.onTap,
    this.bgColor,
    this.txtColor, this.onPress}) ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50.0,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Center(
            child: Text(
              "$title",
              style: TextStyle(
                fontSize: 18,
                color: txtColor,
              ),
            )),
      ),
    );
  }
}
