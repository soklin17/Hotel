import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel/src/screen/screendetail/screenDetail.dart';

class CustomCategory extends StatefulWidget {
  String title;
  String imgUrl;
  String price;
  String address;
  String ratting;

  CustomCategory(
      {this.title, this.imgUrl, this.price, this.address, this.ratting});

  @override
  _CustomCategoryState createState() => _CustomCategoryState();
}

class _CustomCategoryState extends State<CustomCategory> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Detail(
                  image: widget.imgUrl,
                  title: widget.title,
                  address: widget.address,
                  price: widget.price,
                  ratting: widget.ratting,
                )));
      },
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imgUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5.0,
                  offset: Offset(0.0, 0.0),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 80.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ]),
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        //left
                        Column(
                          children: <Widget>[
                            Container(
                              width: 150,
                              child: Text(
                                widget.title,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              margin:
                                  const EdgeInsets.only(left: 10.0, top: 1.0),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 50.0, top: 5.0),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                      child: Icon(
                                    Icons.location_on,
                                    size: 15.0,
                                  )),
                                  Text(widget.address),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  right: 50.0, top: 5.0, bottom: 5.0),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                      child: Icon(
                                    Icons.star_half,
                                    size: 15.0,
                                  )),
                                  Text(widget.ratting),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //Right
                        Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 70.0),
                              child: Text(
                                widget.price,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              margin:
                                  const EdgeInsets.only(top: 5.0, right: 15.0),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 15.0),
                              child: RaisedButton(
                                child: Text(
                                  "BOOK NOW",
                                  style: TextStyle(color: Colors.blue),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  //Right
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
