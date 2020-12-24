import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  IconData icon;
  IconData activeIcon;
  Function onTap;
  bool isSelect;
  int index;
  final Color color;

  CustomBottomBar({
    this.icon,
    // this.title,
    this.activeIcon,
    this.onTap,
    this.isSelect,
    this.index,
    this.color,
  });
  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return widget.isSelect
        ? InkWell(
      onTap: widget.onTap,
      child: Container(
          margin: const EdgeInsets.only(top: 17.0),
          child: Column(
            children: [
              Icon(
                widget.activeIcon,
                color: Color(0xff1F45FC),
              ),
              Container(
                margin: const EdgeInsets.only(top: 2.0),
                decoration: BoxDecoration(
                  color: widget.color,
                  shape: BoxShape.circle,
                ),
                width: 5.0,
                height: 5.0,
              ),
            ],
          )),
    )
        : InkWell(
      onTap: widget.onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            // margin: const EdgeInsets.only(bottom: 10.0),
            child: Icon(widget.icon),
          ),
        ],
      ),
    );
  }
}