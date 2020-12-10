import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hotel/src/model/onbaordmodel/CustomFeatureDetail.dart';
import 'package:hotel/src/model/onbaordmodel/bodymodel.dart';

class Detail extends StatelessWidget {
  final String image;
  final String label;
  final String title;
  final String address;
  final String price;
  final String ratting;

  Detail(
      {this.image,
      this.label,
      this.title,
      this.address,
      this.price,
      this.ratting});
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
                image,
                fit: BoxFit.cover,
              )),
            ),
          ];
        },
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 10, left: 10.0),
                          child: Text(
                            '$title',
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(top: 10.0),
                              child: IconButton(
                                icon: Icon(
                                  Icons.share,
                                  size: 20,
                                ),
                                onPressed: () {},
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10.0),
                              child: IconButton(
                                icon: Icon(
                                  Icons.favorite_border,
                                  size: 20,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 7),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          size: 16.0,
                        ),
                        Text('$address')
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(
                                right: 60,
                              ),
                              child: Text('Price'),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 30),
                              child: Text('Rattings'),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(right: 70),
                              child: Text(
                                '$price',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 4.0),
                              child: RatingBar(
                                initialRating: 4,
                                direction: Axis.horizontal,
                                itemSize: 20.0,
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
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: CustomFeatureDetail(
                                      title: 'Low Cash',
                                      icons: Icon(Icons.monetization_on,
                                          color: Colors.blue),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: CustomFeatureDetail(
                                      title: 'Parking',
                                      icons: Icon(Icons.car_rental,
                                          color: Colors.blue),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: CustomFeatureDetail(
                                      title: 'Party',
                                      icons: Icon(
                                        Icons.wine_bar,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: CustomFeatureDetail(
                                      title: 'Theater',
                                      icons: Icon(
                                        Icons.movie,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: CustomFeatureDetail(
                                      title: 'Bar',
                                      icons: Icon(
                                        Icons.mic,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: CustomFeatureDetail(
                                      title: 'Pool',
                                      icons:
                                          Icon(Icons.pool, color: Colors.blue),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: CustomFeatureDetail(
                                      title: 'Spa',
                                      icons:
                                          Icon(Icons.spa, color: Colors.blue),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: CustomFeatureDetail(
                                      title: 'Game',
                                      icons: Icon(Icons.gamepad,
                                          color: Colors.blue),
                                    ),
                                  ),
                                ],
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
            Container(
              padding: EdgeInsets.only(left: 10.0, top: 10.0),
              child: Text(
                'About',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
              child: Text(
                  'Situated in Phnom Penh, 2.1 km from Vattanac Capital, One Park Hotel and Serviced Apartments features accommodation with a restaurant, free private parking, an outdoor swimming pool. '),
            ),
            Center(
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.blue)),
                color: Colors.white,
                textColor: Colors.blue,
                padding: EdgeInsets.all(10.0),
                onPressed: () {},
                child: Text(
                  "REVIEW".toUpperCase(),
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
