import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel/src/component/customCard.dart';
import 'package:hotel/src/model/map_list/map_model.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> getList=<Map<String, dynamic>>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getList=getDataCategoryList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15.0),
                  topLeft: Radius.circular(15.0),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Container(
                    // margin: const EdgeInsets.only(left: 20.0),
                    child: Icon(Icons.search_sharp),

                  ),
                  labelText: 'Hotel near me',
                  suffixIcon: Container(
                    margin: const EdgeInsets.only(right: 10.0),
                    child: Icon(Icons.calendar_today_outlined),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    getList = getDataCategoryList.where((e) => (e
                        ["title"]
                        .toLowerCase()
                        .contains(value.toLowerCase()))).toList();
                    // print("List Test=>$getList");
                  });
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0,bottom: 10.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4.0,
                      offset: Offset(0.0, 0.0),
                    ),
                  ]),
              width: double.infinity,
              height: 60.0,
              child: Container(
                margin:
                const EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Check in',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              '21 May',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Text(
                                  'Check out',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15.0),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                child: Text(
                                  '31 May',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Person',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15.0),
                            ),
                          ),
                          Container(
                            child: Text(
                              '2 Couple',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

          Column(children: getList.map((e) =>    Container(
            margin: EdgeInsets.only(left:10.0,right: 10.0,bottom: 15.0),
            child: CustomCategory(
              imgUrl: e["imageUrl"],
              title: e["title"],
              address: e["address"],
              price: e["price"],
              ratting: e["rating"],
              description:e["description"],
            ),
          ),).toList(),
          ),
          ],
        ),
      ),
    );
  }
}


