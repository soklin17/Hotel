
import 'package:documents_picker/documents_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hotel/src/model/onbaordmodel/CustomFeatureDetail.dart';
import 'dart:math' as math;
import 'package:flutter_share/flutter_share.dart';

class Detail extends StatefulWidget {
  final String image;
  final String label;
  final String title;
  final String address;
  final String price;
  final String ratting;
  final String icon;
  final String description;

  Detail(
      {this.image,
      this.label,
      this.title,
      this.address,
      this.price,
      this.ratting,this.icon,this.description});
  List list = [
    CustomFeatureDetail(
      title: 'Law Count',
      icons: Icon(
        Icons.attach_money_sharp,
        size: 25.0,
        color: Color(0xff1F45FC),
      ),
    ),
    CustomFeatureDetail(
      title: 'Parking',
      icons: Icon(
        Icons.directions_car,
        size: 25.0,
        color: Color(0xff1F45FC),
      ),
    ),
    CustomFeatureDetail(
      title: 'Party',
      icons: Icon(
        Icons.celebration,
        size: 25.0,
        color: Color(0xff1F45FC),
      ),
    ),
    CustomFeatureDetail(
      title: 'Theater',
      icons: Icon(
        Icons.theaters,
        size: 25.0,
        color: Color(0xff1F45FC),
      ),
    ),
    CustomFeatureDetail(
      title: 'Bar',
      icons: Icon(
        Icons.mic_none,
        size: 25.0,
        color: Color(0xff1F45FC),
      ),
    ),
    CustomFeatureDetail(
      title: 'Pool',
      icons: Icon(
        Icons.pool,
        size: 25.0,
        color: Color(0xff1F45FC),
      ),
    ),
    CustomFeatureDetail(

      title: 'Spa',
      icons: Icon(
        Icons.spa,
        size: 25.0,
        color: Color(0xff1F45FC),
      ),
    ),
    CustomFeatureDetail(
      title: 'Game',
      icons: Icon(
        Icons.gamepad,
        size: 25.0,
        color: Color(0xff1F45FC),
      ),
    ),
  ];

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {

  Future<void> share() async {
    await FlutterShare.share(
        title: 'Example share',
        text: 'Example share text',
        linkUrl: 'https://flutter.dev/',
        chooserTitle: 'Example Chooser Title');
  }

  Future<void> shareFile() async {
    List<dynamic> docs = await DocumentsPicker.pickDocuments;
    if (docs == null || docs.isEmpty) return null;

    await FlutterShare.shareFile(
      title: 'Example share',
      text: 'Example share text',
      filePath: docs[0] as String,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                widget.image,
                fit: BoxFit.cover,
              ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Container(margin: EdgeInsets.only(left: 15.0,right: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      //title and favorite and share
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 10.0),
                              child: Text(
                                '${widget.title}',
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 40.0,
                                  height: 40.0,
                                  margin: const EdgeInsets.only(
                                      top: 15.0, right: 10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Transform(
                                    alignment: Alignment.center,
                                    transform: Matrix4.rotationY(math.pi),
                                    child: IconButton(
                                      icon: Icon(Icons.reply),
                                      color: Color(0xff1F45FC),
                                      onPressed: () {
                                        setState(() {
                                          share();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 40.0,
                                  width: 40.0,
                                  margin: const EdgeInsets.only(
                                      top: 15.0),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                                    color: Colors.blueAccent.withOpacity(0.1),
                                  ),
                                  child:IconButton(
                                    icon: Icon(Icons.favorite_border),
                                    color: Color(0xff1F45FC),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      //Location
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              // margin: EdgeInsets.only(left: 8.5),
                              child: Icon(Icons.location_on,size: 18.0),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 5.5,top: 2.0),
                                child: Text('${widget.address}',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.only( top: 10),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 4.0,
                                    right: 60,
                                  ),
                                  child: Text('Price'),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 3.0),
                                  child: Text('Rattings'),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 5.0,right: 60.0),
                                  child: Text(
                                    '${widget.price}',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 5.0,top: 1.0),
                                  child: Text(
                                    '4.3'
                                    ,style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: RatingBar(
                                    initialRating: 4,
                                    direction: Axis.horizontal,
                                    itemSize: 19.0,
                                    // allowHalfRating: true,
                                    itemCount: 5,
                                    ratingWidget: RatingWidget(
                                      full: Icon(
                                        Icons.star,
                                        color: Color(0xffFFD801),
                                      ),
                                      empty: Icon(
                                        Icons.star_border,
                                        color: Color(0xffFFD801),
                                      ),
                                      half: null,
                                    ),
                                    itemPadding: EdgeInsets.symmetric(),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ),
                              ],
                            ),



                            GridView.builder(
                              // primary: true,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              padding: const EdgeInsets.only(
                                   bottom: 15.0, top: 30),
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisSpacing: 17,
                                  mainAxisSpacing: 20,
                                  crossAxisCount: 4,
                                  childAspectRatio: MediaQuery.of(context).orientation ==
                                      Orientation.landscape
                                      ? 2.1
                                      : 1),
                              itemCount: widget.list.length,
                              itemBuilder: (BuildContext context, int index) {
                                return CustomFeatureDetail(
                                  title: widget.list[index].title,
                                  icons: widget.list[index].icons,
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only( top: 10.0),
                  child: Text(
                    'About',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only( top: 5.0),
                  child: Text('${widget.description}'),
                ),
                Center(
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        side: BorderSide(color: Colors.blue)),
                    color: Colors.white,
                    textColor: Colors.blue,
                    padding: EdgeInsets.all(10.0),
                    onPressed: () {},
                    child: Text(
                      "REVIEW".toUpperCase(),
                      style: TextStyle(
                        fontSize: 14.0,fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
