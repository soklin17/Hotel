import 'package:flutter/material.dart';

class CustomFeatureDetail extends StatelessWidget {
  Icon icons;
  String title;
  CustomFeatureDetail({this.icons, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15.0, top: 15),
      width: 78.0,
      height: 70.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4.0,
              offset: Offset(0.0, 0.0),
            ),
          ]),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(),
            child: Center(
              child: Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: icons,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: Text(
              "$title",
              style: TextStyle(fontSize: 12.0),
            ),
          ),
        ],
      ),
    );
  }
}
