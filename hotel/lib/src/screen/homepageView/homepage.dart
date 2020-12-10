import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel/src/component/customCard.dart';
import 'package:hotel/src/component/customTextfield.dart';
import 'package:hotel/src/navigatbar/ProfileScareen.dart';
import 'package:hotel/src/navigatbar/map.dart';
// import ../Profile;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 40),
              child: CustomTextField(
                hintText: "Hotel near me",
                suffixIcon: Icon(Icons.calendar_today),
                prefixIcon: Icon(Icons.search),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 20.0, top: 5.0),
                      child: Text('Check in'),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.0),
                      child: Text(
                        '28day',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      child: Text('Check out'),
                    ),
                    Container(
                      child: Text('31day',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      child: Text('Person'),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      child: Text('2couple',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: CustomCategory(
                imgUrl: "asset/image/room1.png",
                title: "Residence Hotel",
                address: "Phnom Penh",
                price: "\$450",
                ratting: "4.2 Rattings",
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: CustomCategory(
                imgUrl: "asset/image/room3.jpg",
                title: "TK View Hotel",
                address: "Phnom Penh",
                price: "\$400",
                ratting: "4.2 Rattings",
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: CustomCategory(
                imgUrl: "asset/image/room4.jpg",
                title: "Sokha Hotel",
                address: "Phnom Penh",
                price: "\$500",
                ratting: "4.5 Rattings",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Bar extends StatefulWidget {
  @override
  _BarState createState() => _BarState();
}

class _BarState extends State<Bar> {
  int newindex = 0;
  final Click = true;
  List<Widget> tab = <Widget>[
    HomePage(),
    LocationPage(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tab[newindex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: newindex,
          onTap: (index) {
            setState(() {
              newindex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            new BottomNavigationBarItem(
                icon: new Icon(Icons.home), title: new Text("Home")),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.location_on), title: new Text("Map")),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.person_outline),
                title: new Text("Profile")),
          ]),
    );
  }
}
