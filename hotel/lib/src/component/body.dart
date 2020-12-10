import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel/src/screen/homepageView/homepage.dart';
import 'package:hotel/src/screen/loginscreen/login.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final contoller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          controller: contoller,
          onPageChanged: (page) => {print(page.toString())},
          pageSnapping: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              color: Colors.white,
              child: ListView(
                children: <Widget>[
                  Container(
                    child: Image.asset('asset/image/store1.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 5.0),
                    child: Text(
                      'Book & Hotel ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 5.0),
                    child: Text(
                      'from any where',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                    child: Text(
                      'PageView widget in flutter is used to make Swipeable widget list. PageView widget support both Vertical and Horizontal swipeable scrolling.  ',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  // Container(
                  //   margin: const EdgeInsets.only(right: 320.0, top: 250.0),
                  //   child: FlatButton(
                  //     child: Text(
                  //       'SKIP',
                  //       style: TextStyle(color: Colors.black, fontSize: 20.0),
                  //     ),
                  //     onPressed: () {
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(builder: (context) => Bar()),
                  //       );
                  //     },
                  //   ),
                  // ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 260.0, bottom: 20.0),
                          child: FlatButton(
                            child: Text(
                              'SKIP',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20.0),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Bar()),
                              );
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            right: 100.0,
                            top: 249.0,
                          ),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(0xff1F45FC),
                                    borderRadius: BorderRadius.circular(3.0)),
                                width: 80.0,
                                height: 3.0,
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 1.0),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                width: 20.0,
                                height: 3.0,
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 1.0),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                width: 20.0,
                                height: 3.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: ListView(
                children: <Widget>[
                  Container(
                    child: Image.asset('asset/image/store2.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 5.0),
                    child: Text(
                      'Hotel Facility',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 5.0),
                    child: Text(
                      'Game',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                    child: Text(
                      'PageView widget in flutter is used to make Swipeable widget list. PageView widget support both Vertical and Horizontal swipeable scrolling.  ',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 330.0, bottom: 80.0),
                          child: FlatButton(
                            child: Text(
                              'SKIP',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20.0),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Bar()),
                              );
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            right: 100.0,
                            top: 260.0,
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 1.0),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                width: 20.0,
                                height: 3.0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(0xff1F45FC),
                                    borderRadius: BorderRadius.circular(3.0)),
                                width: 80.0,
                                height: 3.0,
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 1.0),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                width: 20.0,
                                height: 3.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: ListView(
                children: <Widget>[
                  Container(
                    child: Image.asset('asset/image/store3.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 5.0),
                    child: Text(
                      'Health Facility ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 5.0),
                    child: Text(
                      'Pool',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                    child: Text(
                      'PageView widget in flutter is used to make Swipeable widget list. PageView widget support both Vertical and Horizontal swipeable scrolling.  ',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            left: 25.0,
                            right: 100.0,
                            top: 265.0,
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 1.0),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                width: 20.0,
                                height: 3.0,
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 1.0),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                width: 20.0,
                                height: 3.0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(0xff1F45FC),
                                    borderRadius: BorderRadius.circular(3.0)),
                                width: 80.0,
                                height: 3.0,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: 310.0, bottom: 50.0, right: 10.0),
                          child: FlatButton(
                            child: Text(
                              'DONE',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20.0),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
