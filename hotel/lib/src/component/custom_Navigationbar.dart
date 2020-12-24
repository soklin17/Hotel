import 'package:flutter/material.dart';
import 'package:hotel/src/navigatbar/ProfileScareen.dart';
import 'package:hotel/src/navigatbar/map.dart';
import 'package:hotel/src/navigatbar/navigationbar.dart';
import 'package:hotel/src/screen/homepageView/homepage.dart';

class BottomNavigatorBar extends StatefulWidget {
  @override
  _BottomNavigatorBarState createState() => _BottomNavigatorBarState();
}

class _BottomNavigatorBarState extends State<BottomNavigatorBar> {
  // bool isSelect = false;
  void onTap(int index) {
    setState(() {
      newIndex = index;
    });
  }

  List<Widget> tapPage = [
    HomePage(),
    LocationPage(),
    ProfileScreen(),
  ];
  int newIndex = 0;

  bool _home = true;
  bool _location = false;
  bool _profile = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tapPage.elementAt(newIndex),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          width: double.infinity,
          height: 60.0,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 4.0,
              offset: Offset(0.0, 0.0),
            )
          ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomBar(
                icon: Icons.home_outlined,
                color: Color(0xff1F45FC),
                // title: "Home",
                activeIcon: Icons.home_rounded,
                index: 1,
                onTap: () {
                  setState(
                        () {
                      newIndex = 0;
                      _home = true;
                      _location = false;
                      _profile = false;
                    },
                  );
                },
                isSelect: _home,
              ),
              CustomBottomBar(
                icon: Icons.location_on_outlined,
                color: Color(0xff1F45FC),
                // title: "Location",
                activeIcon: Icons.location_on,
                index: 2,
                onTap: () {
                  setState(
                        () {
                      newIndex = 1;
                      _location = true;
                      _home = false;
                      _profile = false;
                    },
                  );
                },
                isSelect: _location,
              ),
              CustomBottomBar(
                icon: Icons.person_outline,
                color: Color(0xff1F45FC),
                // title: "Profile",
                activeIcon: Icons.person,
                index: 3,
                onTap: () {
                  setState(() {
                    newIndex = 2;
                    _profile = true;
                    _home = false;
                    _location = false;
                  });
                },
                isSelect: _profile,
              ),
            ],
          ),
        ),
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: newIndex,
      //   onTap: onTap,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       // icon: isSelect ? Icons.home : ,
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.location_on_outlined),
      //       label: 'Location',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_outline),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
    );
  }
}
