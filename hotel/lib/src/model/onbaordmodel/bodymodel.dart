import 'package:flutter/material.dart';

class DashBoardList extends StatelessWidget {
  final IconData iconData;
  final String label;
  DashBoardList({this.iconData, this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        boxShadow: [BoxShadow(blurRadius: 2, color: Colors.black38)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            iconData,
            size: 20,
            color: Colors.blueAccent,
          ),
          Text(label),
        ],
      ),
    );
  }
}
