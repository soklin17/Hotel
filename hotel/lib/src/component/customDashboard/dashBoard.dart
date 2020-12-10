import 'package:flutter/material.dart';

class DashList extends StatefulWidget {
  final String label;
  final String iconData;

  DashList({this.label, this.iconData});
  @override
  _DashListState createState() => _DashListState();
}

class _DashListState extends State<DashList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 90,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4.0,
                        offset: Offset(0.0, 0.0),
                      ),
                    ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
