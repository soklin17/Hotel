import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              padding:
              EdgeInsets.only(top: 50, left: 15.0, right: 15.0, bottom: 15.0),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 130,
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
                          blurRadius: 2.0,
                          offset: Offset(1.0, 1.0),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 15.0, top: 15.0, bottom: 15.0, right: 15.0),
                          child: Image.asset(
                            "asset/image/Avatar.png",
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 30, right: 75),
                              child: Text(
                                'Na Ro',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: Text(
                                'sample@gmail.com',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 2.0,
                          offset: Offset(1.0, 1.0),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  height: 65.0,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(
                            left: 20.0,
                          ),
                          child: Text("My Information",
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      Container(
                          margin: const EdgeInsets.only(right: 20.0),
                          child: Icon(Icons.navigate_next)),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 2.0,
                          offset: Offset(1.0, .0),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  height: 65.0,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(
                            left: 20.0,
                          ),
                          child: Text("My Booking",
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      Container(
                          margin: const EdgeInsets.only(right: 20.0),
                          child: Icon(Icons.navigate_next)),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 2.0,
                          offset: Offset(1.0, 1.0),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  height: 65.0,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(
                            left: 20.0,
                          ),
                          child: Text("Payment Method",
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      Container(
                          margin: const EdgeInsets.only(right: 20.0),
                          child: Icon(Icons.navigate_next)),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 2.0,
                          offset: Offset(1.0, 1.0),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  height: 65.0,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(
                            left: 20.0,
                          ),
                          child: Text("Setting",
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      Container(
                          margin: const EdgeInsets.only(right: 20.0),
                          child: Icon(Icons.navigate_next)),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),

                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 2.0,
                          offset: Offset(1.0, 1.0),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  height: 65.0,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(
                            left: 20.0),
                          child: Text("Logout",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                      ),

                      Container(
                          margin: const EdgeInsets.only(right: 20.0),
                          child: Icon(Icons.navigate_next)),
                    ],
                  ),

                ),
                SizedBox(height: 20.0,)
              ],
            ),
          ],
        ),
      ],
    );
  }
}
